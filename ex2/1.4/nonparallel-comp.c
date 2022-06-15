#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>

#include "../helpers/proc-common.h"
#include "../helpers/tree.h"

void fork_procs(struct tree_node *root, int fdw)
{
	int wstatus;
	change_pname(root->name); //for pstree
	printf("%s: Starting...\n", root->name);

	//current node is a leaf - number
	if(root->nr_children==0) {
		if(raise(SIGSTOP)!=0) {
			perror("raise");
			exit(1);
		}
		int value=atoi(root->name);
		if(write(fdw, &value, sizeof(value))!=sizeof(value)) {
			perror("write to pipe");
			exit(1);
		}
		close(fdw);
		exit(13); //we assume exit status=13 for leaf processes
	} else { //current node is operator - non leaf - subexpression
		pid_t pid[root->nr_children]; //we must remember our children!
		int pipefd[2];         //we need only one pipe
		if(pipe(pipefd)==-1) {
			perror("pipe");
			exit(1);
		}
		int i;
		for(i=0; i < root->nr_children; i++) {
			pid[i]=fork();
			if(pid[i]<0) {
				perror("fork");
				exit(1);
			}
			if(pid[i]==0) { //i'm the child
				close(pipefd[0]);
				fork_procs(root->children+i, pipefd[1]);//recursive call
			}
		}
		close(pipefd[1]);
		/* wait for all children to stop, then stop yourself */
		wait_for_ready_children(root->nr_children);
		if(raise(SIGSTOP)!=0) {
			perror("raise");
			exit(1);
		}
		int value[2];
		/* wake up each child, take its value and then wait for it to die :( */
		for(i=0; i < root->nr_children; i++) {
			if(kill(pid[i], SIGCONT)<0) {
				perror("kill");
				exit(1);
			}
			if(wait(&wstatus)==-1) {
				perror("wait");
				exit(1);
			}
			explain_wait_status(pid[i], wstatus);
			if(read(pipefd[0], &value[i], sizeof(value[i]))!=sizeof(value[i])) {
				perror("read from pipe");
				exit(1);
			}
		}
		close(pipefd[0]);
		int result;
		if(!strcmp(root->name, "+")) {
			result=value[0]+value[1];
		}
		if(!strcmp(root->name, "*")) {
			result=value[0]*value[1];
		}
		printf("Me: %ld, i have computed: %i %s %i = %i\n", (long)getpid(), value[0], root->name, value[1], result);
		if(write(fdw, &result, sizeof(result))!=sizeof(result)) {
			perror("write to pipe");
			exit(1);
		}
		close(fdw);
		exit(7); //we assume exit status=7 for non-leaf processes
	}
}

/*
 * we handle our expression tree like a process tree "firing" in a postorder
 * DF way, in order to compute the result of the arithmetic expression that depicts.
 * (this is not parallel computation...)
 *
 * every leaf process-number returns to its parent (operator) its value.
 *
 * every non-leaf process-operator-subexpression takes the values of its children-
 * operands, computes the result based on what operator it is (+ or * here) and returns
 * the result to its parent. This recursively leads to the evaluation of the arithmetic
 * expression in the initial process.
 */

int main(int argc, char **argv)
{
	int result;  //the result of the expression depicted in the expression tree
	int pipefd[2];
	pid_t pid_root;
	int wstatus;
	struct tree_node *root;

	if(argc!=2) { //check if arguments are OK
		fprintf(stderr, "Usage: %s <input_expr_tree_file>\n\n", argv[0]);
		exit(1);
	}

	root = get_tree_from_file(argv[1]); //the infile describes the expression tree
	print_tree(root);

	if(pipe(pipefd)==-1) {
		perror("main: pipe");
		exit(1);
	}

	/* fork root of process tree */
	pid_root=fork();
	if(pid_root<0) {
		perror("main: fork");
		exit(1);
	}
	if(pid_root==0) {
		/* child (root of process tree) */
		close(pipefd[0]); //children write to parent
		fork_procs(root, pipefd[1]);
	}

	/*
	 * father (initial process)
	 */
	close(pipefd[1]); //parent reads from children
	wait_for_ready_children(1);

	/* print the expression tree with root having pid_root */
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

	if(read(pipefd[0], &result, sizeof(result))!=sizeof(result)) {
		perror("main: read from pipe");
		exit(1);
	}

	close(pipefd[0]);

	printf("The result of the expression is: %i\n", result);

	return 0;
}
