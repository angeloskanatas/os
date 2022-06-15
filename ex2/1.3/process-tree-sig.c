#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "../helpers/proc-common.h"
#include "../helpers/tree.h"

void fork_procs(struct tree_node *root)
{
	int wstatus;
	change_pname(root->name); //for pstree
	printf("%s: Starting...\n", root->name);

	//current node is a leaf process (base case)
	if(root->nr_children==0) {
		if(raise(SIGSTOP)!=0) {
			perror("raise");
			exit(1);
		}
		printf("%s is awake!\n", root->name);
		exit(13); //we assume exit status=13 for leaf processes
	} else { //current node is not a leaf process
		pid_t pid[root->nr_children]; //now we must remember our children to
		int i;                        //wake them up later
		for(i=0; i < root->nr_children; i++) {
			pid[i]=fork();
			if(pid[i]<0) {
				perror("fork");
				exit(1);
			}
			if(pid[i]==0) { //i'm the child
				fork_procs(root->children+i); //recursive call
			}
		}
		/* wait for all children to stop, then stop yourself */
		wait_for_ready_children(root->nr_children);
		if(raise(SIGSTOP)!=0) {
			perror("raise");
			exit(1);
		}                                     //this recursively leads to DF
		printf("%s is awake!\n", root->name); //ordering of the awake messages!
		/* wake up each child and then wait for it to die :( */
		for(i=0; i < root->nr_children; i++) {
			if(kill(pid[i], SIGCONT)<0) {
				perror("kill");
				exit(1);
			}
			if(wait(&wstatus)==-1) {           //the ordering of the
				perror("wait");            //diagnostic terminate
				exit(1);                   //messages is deterministic
			}                                  //now (DF postorder traversal)!
			explain_wait_status(pid[i], wstatus);
		}
		exit(7); //we assume exit status=7 for non-leaf processes
	}
}

/*
 * the initial process (our program) forks the root of the process tree,
 * waits for the process tree to be completely created (with wait_for_ready_children())
 * ,then takes a photo of it using show_pstree() and after it wakes up the root of the
 * process tree waits for it to die.
 *
 * how to wait for the process tree to be ready?
 *  ->use wait_for_ready_children() to wait until
 *    all of the children processes recursively are
 *    created.
 *
 * every leaf process raises SIGSTOP and waits to continue (print awake message and
 * then exit).
 *
 * every non-leaf process creates its children processes, waits for all children
 * to stop, then stops with raise(SIGSTOP) until it receives SIGCONT signal, prints
 * awake message and wakes up each child then waiting for it to die. This recursively
 * leads to DF ordering of the awaking messages.
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

	root = get_tree_from_file(argv[1]); //the infile describes the process tree
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
	wait_for_ready_children(1);

	/* print the process tree with root having pid_root */
	show_pstree(pid_root);

	/* wake up the root of the process tree */
	if(kill(pid_root, SIGCONT)<0) {
		perror("main: kill");
		exit(1);
	}

	/* wait for the root of the process tree to terminate */
	if(wait(&wstatus)==-1) {
		perror("main: wait");
		exit(1);
	}
	explain_wait_status(pid_root, wstatus);

	return 0;
}
