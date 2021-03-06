#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc, const char *argv[])
{
	int count, i;
	pid_t pid;

	count = (argc > 1) ? atol(argv[1]) : 10;

	for (i=0; i<count; i++){

		/* do fork */
		if ((pid = fork()) < 0){
			perror("fork");
			exit(1);
		}

		/* father continues */
		if (pid != 0)
			continue;

		/* child: run process */
		srand(time(NULL)+getpid()); //the solution to have "random" numbers
		printf("%d\n", rand());     //generated by each child process is to
		exit(0);                    //seed by adding getpid(). This ensures
	}                                   //different pseudo-random sequence
	/* wait for children */             //generated by each child process because
	for (i=0; i<count; i++){            //they have different PIDs (PIDs aren't
		wait(NULL);                 //typically re-used that quickly).
	}

	return 0;
}
