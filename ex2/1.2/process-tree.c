#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "../helpers/proc-common.h"
#include "../helpers/tree.h"

#define SLEEP_PROC_SEC  10
#define SLEEP_TREE_SEC  3


void fork_procs(struct tree_node *root)
{
	pid_t child_pid;
	int wstatus;
	change_pname(root->name); //for pstree
	printf("%s: Starting...\n", root->name);

	//current node is a leaf process (base case)
	if(root->nr_children==0) {
		printf("%s: Sleeping...\n", root->name);
		sleep(SLEEP_PROC_SEC);
		printf("%s: Exiting...\n", root->name);
		exit(13); //we assume exit status=13 for leaf processes
	} else { //current node is not a leaf process
		int i;
		for(i=0; i < root->nr_children; i++) {
			child_pid=fork();
			if(child_pid<0) {
				perror("fork");
				exit(1);
			}
			if(child_pid==0) { //i'm the child
				fork_procs(root->children+i); //recursive call
			}
		}
		//parent process waiting for all of its children to die
		printf("%s: Waiting...\n", root->name);
		for(i=0; i < root->nr_children; i++) {
			child_pid=wait(&wstatus);
			if(child_pid==-1) {
				perror("wait");
				exit(1);
			}
			explain_wait_status(child_pid, wstatus);
		}
		printf("%s: Exiting...\n", root->name);
		exit(7); //we assume exit status=7 for non-leaf processes
	}
}

/*
 * the initial process (our program) forks the root of the process tree,
 * waits for the process tree to be completely created (with sleep()),
 * then takes a photo of it using show_pstree() and waits for the root to die.
 *
 * how to wait for the process tree to be ready?
 *  ->sleep for a few seconds, hope for the best.
 *
 * also the children leaf processes stay active (they sleep()) for a few seconds (>sleep
 * time of the initial process), so the user can see the whole process tree created.
 *
 * the parent processes wait until all of their children die.
*/

int main(int argc, char **argv)
{
	pid_t pid_root;
	int wstatus;
	struct tree_node *root;

	if(argc!=2) { //check if arguments are OK
		fprintf(stderr, "Usage: %s <input_tree_file>\n\n", argv[0]);
		exit(1);
	}

	root=get_tree_from_file(argv[1]); //the infile describes the process tree
	print_tree(root);

	/* fork root of process tree */
	pid_root=fork();
	if(pid_root<0) {
		perror("main: fork");
		exit(1);
	}
	if(pid_root==0) {
		/* child (root of process tree) */
		fork_procs(root);
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
