#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "../helpers/proc-common.h"

#define SLEEP_PROC_SEC  10
#define SLEEP_TREE_SEC  3

/*
 * create this process tree:
 * A-+-B---D
 *   `-C
 */
void fork_procs(void)
{
	/*
	 * root of the process tree is A
	 */

	//i'm A
	pid_t Bpid, Cpid, Dpid, killed_child_pid; //we can use only one pid_t variable
	int wstatus;                              //but for comprehension reasons we
	change_pname("A"); //for pstree           //do this
	printf("A: Starting...\n");
	Bpid=fork();
	if(Bpid<0) {
		perror("fork");
		exit(1);
	}
	if(Bpid==0) { //i'm  B
		change_pname("B");
		printf("B: Starting...\n");
		Dpid=fork();
		if(Dpid<0) {
			perror("fork");
			exit(1);
		}
		if(Dpid==0) { //i'm D               //the format of the code resembles
			change_pname("D");          //DF traversal of the process tree
			printf("D: Starting...\n"); //,but the real sequence in which the
			printf("D: Sleeping...\n"); //processes start, wait and exit is
			sleep(SLEEP_PROC_SEC);      //random-like and depends on the OS
			printf("D: Exiting...\n");  //scheduler
			exit(13);
		}
		printf("B: Waiting...\n"); //B waiting for D to die
		Dpid=wait(&wstatus);
		if(Dpid==-1) {
			perror("wait");
			exit(1);
		}
		explain_wait_status(Dpid, wstatus);
		printf("B: Exiting...\n");
		exit(19);
	}
	Cpid=fork();
	if(Cpid<0) {
		perror("fork");
		exit(1);
	}
	if(Cpid==0) { //i'm C
		change_pname("C");
		printf("C: Starting...\n");
		printf("C: Sleeping...\n");
		sleep(SLEEP_PROC_SEC);
		printf("C: Exiting...\n");
		exit(17);
	}
	printf("A: Waiting...\n"); //A waiting for B and C to die
	int i;
	for(i=0; i<2; i++) {
		killed_child_pid=wait(&wstatus);
		if(killed_child_pid==-1) {
			perror("wait");
			exit(1);
		}
		explain_wait_status(killed_child_pid, wstatus);
	}
	printf("A: Exiting...\n");
	exit(16);
}

/*
 * the initial process (our program) forks the root of the process tree (A),
 * waits for the process tree to be completely created (with sleep()),
 * then takes a photo of it using show_pstree() and waits for A to die.
 *
 * how to wait for the process tree to be ready?
 *  ->sleep for a few seconds, hope for the best.
 *
 * also the children leaf processes stay active (they sleep()) for a few seconds (>sleep
 * time of the initial process), so the user can see the whole process tree created.
 *
 * the parent processes wait until all of their children die.
*/

int main(void)
{
	pid_t pid_root;
	int wstatus;

	/* fork root of process tree */
	pid_root=fork();
	if(pid_root<0) {
		perror("main: fork");
		exit(1);
	}
	if(pid_root==0) {
		/* child (root of process tree) */
		fork_procs();
	}

	/*
	 * father (initial process)
	 */
	sleep(SLEEP_TREE_SEC);

	/* print the process tree with root having pid_root */
	show_pstree(pid_root);

	/* wait for the root of the process tree to terminate */
	printf("initial process: Waiting...\n");
	pid_root=wait(&wstatus);
	if(pid_root==-1) {
		perror("main: wait");
		exit(1);
	}
	explain_wait_status(pid_root, wstatus);
	printf("initial process: All done, exiting...\n");

	return 0;
}
