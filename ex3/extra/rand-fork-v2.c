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
		srand(time(NULL));      //seed inside the children processes
		printf("%d\n", rand()); //is the same because time() changes
		exit(0);                //once per second (if we fork >10000
                                        //processes we will see 'groups' of
                                        //pseudo-random numbers)
	}

	/* wait for children */
	for (i=0; i<count; i++){
		wait(NULL);
	}

	return 0;
}
