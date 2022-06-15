/*
 * A program to draw the mandelbrot set on a 256-color xterm.
 */

#include <stdio.h>
#include <unistd.h>
#include <assert.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
#include <pthread.h>
#include <semaphore.h>
#include <signal.h>
#include <errno.h>

#include "../helpers/mandel-lib.h"
#include "../helpers/proc-safe.h" //contains safe_atoi() and safe_malloc()

#define MANDEL_MAX_ITERATION 100000

#define perror_pthread(ret, msg) \
	do{ errno=ret; perror(msg); } while(0)

/*
 * Output at the terminal is is x_chars wide by y_chars long.
*/
int y_chars = 50;
int x_chars = 90;

/*
 * The part of the complex plane to be drawn:
 * upper left corner is (xmin, ymax), lower right corner is (xmax, ymin).
*/
double xmin = -1.8, xmax = 1.0;
double ymin = -1.0, ymax = 1.0;

/*
 * Every character in the final output is
 * xstep x ystep units wide on the complex plane.
 */
double xstep;
double ystep;

/*
 * This function computes a line of output
 * as an array of x_char color values.
 */
void compute_mandel_line(int line, int color_val[])
{
	/*
	 * x and y traverse the complex plane.
	 */
	double x, y;

	int n;
	int val;

	/* Find out the y value corresponding to this line */
	y = ymax - ystep * line;

	/* and iterate for all points on this line */
	for (x = xmin, n = 0; n < x_chars; x+= xstep, n++) {

		/* Compute the point's color value */
		val = mandel_iterations_at_point(x, y, MANDEL_MAX_ITERATION);
		if (val > 255)
			val = 255;

		/* And store it in the color_val[] array */
		val = xterm_color(val);
		color_val[n] = val;
	}
}

/*
 * This function outputs an array of x_char color values
 * to a 256-color xterm.
 */
void output_mandel_line(int fd, int color_val[])
{
	int i;

	char point ='@';
	char newline='\n';

	for (i = 0; i < x_chars; i++) {
		/* Set the current color, then output the point */
		set_xterm_color(fd, color_val[i]);
		if (write(fd, &point, 1) != 1) {
			perror("compute_and_output_mandel_line: write point");
			exit(1);
		}
	}

	/* Now that the line is done, output a newline character */
	if (write(fd, &newline, 1) != 1) {
		perror("compute_and_output_mandel_line: write newline");
		exit(1);
	}
}

/*
 * Catch SIGINT (Ctrl-C) with the sigint_handler to ensure the prompt is not
 * drawn in a funny colour if the user "terminates" the execution with Ctrl-C.
 */
void sigint_handler(int signum)
{
	reset_xterm_color(1);
	exit(1);
}

sem_t *sem; //globalize the address so it can be visible from all threads
int nrthreads; //globalize the thread_count so it can be visible from all threads

/*
 * Each thread computes and outputs the lines i, i+n, i+2*n, i+3*n, ..., where n is the
 * thread_count and i is the thread index. The computation is parallel but the output must
 * be in the right order. The serialization of the output is achieved by the use of thread_count
 * number of semaphores. The output of the lines is the critical section, which means that only
 * one thread must output at a time. The first thread (i=0) has an 'unlocked' semaphore, so it
 * outputs its line, blocks its semaphore and then unlocks the next thread to output (all the
 * other threads have 'locked' semaphores). This circularly leads to the right ordering of the
 * output. Note that the computation is parallel because it is not included in the critical
 * section. If we add it to the critical section the program execution is not parallel!
 */
void *compute_and_output_mandel_line(void *thread_index)
{
	int i, color_val[x_chars]; //color_val is not shared among threads

	for(i=(int)thread_index; i<y_chars; i+=nrthreads) {
		compute_mandel_line(i, color_val); //the computation is parallel
		if(sem_wait(&sem[(int)thread_index])<0) { //wait for my turn to output,
			perror("sem_wait");               //then lock my sema till someone
			exit(1);                          //unlocks me to output again
		}
		output_mandel_line(1, color_val); //critical section
		if(sem_post(&sem[((int)thread_index+1)%nrthreads])<0) { //unlock circularly the
			perror("sem_post");                             //next thread to output
			exit(1);
		}
	}

	return NULL;
}

int main(int argc, char **argv)
{ //main-thread
	int i, ret;

	xstep = (xmax - xmin) / x_chars;
	ystep = (ymax - ymin) / y_chars;

	/*
	 * check if arguments are OK
	 */
	if((argc!=2)||(safe_atoi(argv[1], &nrthreads)<0)||(nrthreads<=0)) {
		fprintf(stderr, "Usage: %s thread_count\n\n"
			"Exactly one argument required:\n"
			"	thread_count: The number of threads to create.\n",
			argv[0]);
			exit(1);
	}

	/*
	 * signal handling
	 */
	struct sigaction sa;
	sa.sa_handler=sigint_handler;
	sa.sa_flags=0;
	sigemptyset(&sa.sa_mask);
	if(sigaction(SIGINT, &sa, NULL)<0) {
		perror("sigaction");
		exit(1);
	}

	sem=(sem_t*)safe_malloc(nrthreads*sizeof(sem_t)); //the number of semaphores
							  //we use is equal to the
							  //thread_count

	if(sem_init(&sem[0], 0, 1)<0) { //initialize first semaphore to value 1 (unlocked)
		perror("sem_init");     //(thread[0] outputs first the 0 line)
		exit(1);
	}
	for(i=1; i<nrthreads; i++) { //initialize the other semaphores to value 0 (locked)
		if(sem_init(&sem[i], 0, 0)<0) {
			perror("sem_init");
			exit(1);
		}
	}

	/*
	 * create threads
	 */
	pthread_t thread[nrthreads];
	for(i=0; i<nrthreads; i++) {
		ret=pthread_create(&thread[i], NULL, compute_and_output_mandel_line, (void*)i);
		if(ret) {
			perror_pthread(ret, "pthread_create");
			exit(1);
		}
	}

	/*
	 * wait for all threads to terminate
	 */
	for(i=0; i<nrthreads; i++) {
		ret=pthread_join(thread[i], NULL);
		if(ret)
			perror_pthread(ret, "pthread_join");
	}

	/*
	 * destroy the semaphores
	 */
	for(i=0; i<nrthreads; i++) {
		if(sem_destroy(&sem[i])<0) {
			perror("sem_destroy");
			exit(1);
		}
	}

	free(sem);

	reset_xterm_color(1);
	return 0;
}
