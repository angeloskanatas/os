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
	srand(time(NULL)); //seed in the parent process

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
		printf("%d\n", rand()); //same seed-RNG state from parent process ->
		exit(0);                //same pseudo-random sequence in the children
	}                               //processes

	/* wait for children */
	for (i=0; i<count; i++){
		wait(NULL);
	}

	return 0;
}
