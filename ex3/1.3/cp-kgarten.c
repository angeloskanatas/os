/*
 * A kindergarten simulator.
 * Bad things happen if teachers and children
 * are not synchronized properly.
 */

#include <time.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

#include "../helpers/proc-safe.h" //contains safe_atoi() and safe_malloc()

/*
 * POSIX thread functions do not return error numbers in errno,
 * but in the actual return value of the function call instead.
 * This macro helps with error reporting in this case.
 */
#define perror_pthread(ret, msg) \
	do { errno=ret; perror(msg); } while (0)

/* A virtual kindergarten */
struct kgarten_struct {
	pthread_cond_t condc; //now we use 2 condition variables because we want
	pthread_cond_t condt; //to prioritize children entering over teachers exiting

	int vt; //number of teachers in the kindergarten
	int vc; //number of children in the kindergarten
	int ratio; //given ratio that must be respected or bad things happen

	pthread_mutex_t mutex; //for critical sections and
};                             //association with the cond vars

/*
 * A (distinct) instance of this structure
 * is passed to each thread
 */
struct thread_info_struct {
	pthread_t tid; /* POSIX thread id, as returned by the library */

	struct kgarten_struct *kg; /* Every thread interacts with the kindergarten */
	int is_child;  /* Nonzero if this thread simulates children, zero otherwise */

	int thrid;     /* Application-defined thread id */
	int thrcnt;
	unsigned int rseed;
};

void usage(char *argv0)
{
	fprintf(stderr, "Usage: %s thread_count child_threads c_t_ratio\n\n"
		"Exactly three arguments required:\n"
		"    thread_count: Total number of threads to create.\n"
		"    child_threads: The number of threads simulating children.\n"
		"    c_t_ratio: The allowed ratio of children to teachers.\n\n",
		argv0);
	exit(1);
}

void bad_thing(int thrid, int children, int teachers)
{
	int thing, sex;
	int namecnt, nameidx;
	char *name, *p;
	char buf[1024];

	char *things[]={
		"Little %s put %s finger in the wall outlet and got electrocuted!",
		"Little %s fell off the slide and broke %s head!",
		"Little %s was playing with matches and lit %s hair on fire!",
		"Little %s drank a bottle of acid with %s lunch!",
		"Little %s caught %s hand in the paper shredder!",
		"Little %s wrestled with a stray dog and it bit %s finger off!"
	};
	char *boys[]={
		"George", "John", "Nick", "Jim", "Constantine",
		"Chris", "Peter", "Paul", "Steve", "Billy", "Mike",
		"Vangelis", "Antony"
	};
	char *girls[]={
		"Maria", "Irene", "Christina", "Helena", "Georgia", "Olga",
		"Sophie", "Joanna", "Zoe", "Catherine", "Marina", "Stella",
		"Vicky", "Jenny"
	};

	thing=rand() % 4;
	sex=rand() % 2;

	namecnt=sex ? sizeof(boys)/sizeof(boys[0]) : sizeof(girls)/sizeof(girls[0]);
	nameidx=rand()%namecnt;
	name=sex ? boys[nameidx] : girls[nameidx];

	p=buf;
	p+=sprintf(p, "*** Thread %d: Oh no! ", thrid);
	p+=sprintf(p, things[thing], name, sex ? "his" : "her");
	p+=sprintf(p, "\n*** Why were there only %d teachers for %d children?!\n",
		teachers, children);

	/* Output everything in a single atomic call */
	printf("%s", buf);
}

void child_enter(struct thread_info_struct *thr)
{
	int ret;
	if (!thr->is_child) {
		fprintf(stderr, "Internal error: %s called for a Teacher thread.\n",
			__func__);
		exit(1);
	}

	fprintf(stderr, "THREAD %d: CHILD WAITS TO ENTER\n", thr->thrid);

	pthread_mutex_lock(&thr->kg->mutex);
	while(!((thr->kg->vc)<(thr->kg->vt)*(thr->kg->ratio))) { //i can enter if c<t*r
		ret=pthread_cond_wait(&thr->kg->condc, &thr->kg->mutex);
		if(ret) {
			perror_pthread(ret, "pthread_cond_wait");
			exit(1);
		}
	}
	++(thr->kg->vc);
	pthread_mutex_unlock(&thr->kg->mutex);
}

void child_exit(struct thread_info_struct *thr)
{
	int ret;
	if (!thr->is_child) {
		fprintf(stderr, "Internal error: %s called for a Teacher thread.\n",
			__func__);
		exit(1);
	}

	fprintf(stderr, "THREAD %d: CHILD WAITS TO EXIT\n", thr->thrid);

	pthread_mutex_lock(&thr->kg->mutex);
	--(thr->kg->vc);
	ret=pthread_cond_broadcast(&thr->kg->condc); //prioritize children entering
	if(ret) {                                    //over teachers exiting!
		perror_pthread(ret, "pthread_cond_broadcast");
		exit(1);
	}
	ret=pthread_cond_broadcast(&thr->kg->condt);
	if(ret) {
		perror_pthread(ret, "pthread_cond_broadcast");
		exit(1);
	}
	pthread_mutex_unlock(&thr->kg->mutex);
}

void teacher_enter(struct thread_info_struct *thr)
{
	int ret;
	if (thr->is_child) {
		fprintf(stderr, "Internal error: %s called for a Child thread.\n",
			__func__);
		exit(1);
	}

	fprintf(stderr, "THREAD %d: TEACHER WAITS TO ENTER\n", thr->thrid);

	pthread_mutex_lock(&thr->kg->mutex);
	++(thr->kg->vt);
	ret=pthread_cond_broadcast(&thr->kg->condc); //notify only children to enter!
	if(ret) {
		perror_pthread(ret, "pthread_cond_broadcast");
		exit(1);
	}
	pthread_mutex_unlock(&thr->kg->mutex);
}

void teacher_exit(struct thread_info_struct *thr)
{
	int ret;
	if (thr->is_child) {
		fprintf(stderr, "Internal error: %s called for a Child thread.\n",
			__func__);
		exit(1);
	}

	fprintf(stderr, "THREAD %d: TEACHER WAITS TO EXIT\n", thr->thrid);

	pthread_mutex_lock(&thr->kg->mutex);
	while(!((thr->kg->vc)<=(thr->kg->vt-1)*(thr->kg->ratio))) { //i can exit if c<=(t-1)*r
		ret=pthread_cond_wait(&thr->kg->condt, &thr->kg->mutex);
		if(ret) {
			perror_pthread(ret, "pthread_cond_wait");
			exit(1);
		}
	}
	--(thr->kg->vt);
	pthread_mutex_unlock(&thr->kg->mutex);
}

/*
 * Verify the state of the kindergarten.
 */
void verify(struct thread_info_struct *thr)
{
        struct kgarten_struct *kg=thr->kg;
        int t, c, r;

        c=kg->vc;
        t=kg->vt;
        r=kg->ratio;

        fprintf(stderr, "            Thread %d: Teachers: %d, Children: %d\n",
                thr->thrid, t, c);

        if (c>t*r) { //it must always be c<=t*r or bad things happen!
                bad_thing(thr->thrid, c, t);
                exit(1);
        }
}

/*
 * A single thread.
 * It simulates either a teacher, or a child.
 */
void *thread_start_fn(void *arg)
{
	/* We know arg points to an instance of thread_info_struct */
	struct thread_info_struct *thr = arg;
	char *nstr;

	fprintf(stderr, "Thread %d of %d. START.\n", thr->thrid, thr->thrcnt);

	nstr=thr->is_child ? "Child" : "Teacher";
	for(;;) { //user terminates kindergarten simulation with Ctrl-C
		fprintf(stderr, "Thread %d [%s]: Entering.\n", thr->thrid, nstr);
		if(thr->is_child)
			child_enter(thr);
		else
			teacher_enter(thr);

		fprintf(stderr, "Thread %d [%s]: Entered.\n", thr->thrid, nstr);

		/* Verify */
		pthread_mutex_lock(&thr->kg->mutex);
		verify(thr); //critical section!       //verify kindergarten state at "random" moments
        	pthread_mutex_unlock(&thr->kg->mutex); //(depends partially on the OS scheduler)

		/* Just stay in the kindergarten for a while */
		//usleep(rand_r(&thr->rseed)%1000000/(thr->is_child ? 10000 : 1));
		usleep(rand_r(&thr->rseed)%1000000);

		fprintf(stderr, "Thread %d [%s]: Exiting.\n", thr->thrid, nstr);
		if(thr->is_child)
			child_exit(thr);
		else
			teacher_exit(thr);

		fprintf(stderr, "Thread %d [%s]: Exited.\n", thr->thrid, nstr);

		/* Sleep for a while before re-entering */
		//usleep(rand_r(&thr->rseed)%100000*(thr->is_child ? 100 : 1));
		usleep(rand_r(&thr->rseed)%100000);

		/* Verify */
        	pthread_mutex_lock(&thr->kg->mutex); //verify kindergarten state at "random" moments
		verify(thr); //critical section!     //(depends partially on the OS scheduler)
        	pthread_mutex_unlock(&thr->kg->mutex);
	}

	fprintf(stderr, "Thread %d of %d. END.\n", thr->thrid, thr->thrcnt);

	return NULL;
}

/*
 * The output order of the diagnostic messages is "random"
 * and depends partially on the scheduler.
 */

int main(int argc, char *argv[])
{ //main-thread
	int i, ret, thrcnt, chldcnt, ratio;
	struct thread_info_struct *thr;
	struct kgarten_struct *kg;

	/*
	 * parse the command line
	 */
	if (argc!=4)
		usage(argv[0]);
	if (safe_atoi(argv[1], &thrcnt)<0 || thrcnt<=0) {
		fprintf(stderr, "`%s' is not valid for `thread_count'\n", argv[1]);
		exit(1);
	}
	if (safe_atoi(argv[2], &chldcnt)<0 || chldcnt<0 || chldcnt>thrcnt) {
		fprintf(stderr, "`%s' is not valid for `child_threads'\n", argv[2]);
		exit(1);
	}
	if (safe_atoi(argv[3], &ratio)<0 || ratio<1) {
		fprintf(stderr, "`%s' is not valid for `c_t_ratio'\n", argv[3]);
		exit(1);
	}


	/*
	 * initialize kindergarten and random number generator
	 */
	srand(time(NULL)); //seed

	kg=safe_malloc(sizeof(*kg));
	kg->vt=kg->vc=0; //at the beginning of the simulation the kindergarten is empty
	kg->ratio=ratio;

	ret=pthread_mutex_init(&kg->mutex, NULL); //mutex initialization
	if(ret) {
		perror_pthread(ret, "pthread_mutex_init");
		exit(1);
	}

	/* cond vars initialization */
	ret=pthread_cond_init(&kg->condc, NULL);
	if(ret) {
		perror_pthread(ret, "pthread_cond_init");
		exit(1);
	}
	ret=pthread_cond_init(&kg->condt, NULL);
	if(ret) {
		perror_pthread(ret, "pthread_cond_init");
		exit(1);
	}

	/*
	 * create threads
	 */
	thr=safe_malloc(thrcnt * sizeof(*thr));

	for (i=0; i<thrcnt; i++) {
		/* initialize per-thread structure */
		thr[i].kg=kg;
		thr[i].thrid=i;
		thr[i].thrcnt=thrcnt;
		thr[i].is_child=(i<chldcnt); //first create all the children threads
		thr[i].rseed=rand();

		/* spawn new thread */
		ret=pthread_create(&thr[i].tid, NULL, thread_start_fn, &thr[i]);
		if(ret) {
			perror_pthread(ret, "pthread_create");
			exit(1);
		}
	}

	/*
	 * wait for all threads to terminate
	 */
	for (i=0; i<thrcnt; i++) {
		ret=pthread_join(thr[i].tid, NULL);
		if(ret) {
			perror_pthread(ret, "pthread_join");
			exit(1);
		}
	}

	/*
	 * destroy the mutex and cond var objects
	 */
	ret=pthread_mutex_destroy(&kg->mutex);
	if(ret) {
		perror_pthread(ret, "pthread_mutex_destroy");
		exit(1);
	}
	ret=pthread_cond_destroy(&kg->condc);
	if(ret) {
		perror_pthread(ret, "pthread_cond_destroy");
		exit(1);
	}
	ret=pthread_cond_destroy(&kg->condt);
	if(ret) {
		perror_pthread(ret, "pthread_cond_destroy");
		exit(1);
	}

	free(thr);
	free(kg);

	printf("OK.\n");

	return 0;
}
