.PHONY: hardcoded-process-tree run clean


hardcoded-process-tree: hardcoded-process-tree.o ../helpers/proc-common.o
	gcc -o hardcoded-process-tree hardcoded-process-tree.o ../helpers/proc-common.o

hardcoded-process-tree.o: hardcoded-process-tree.c ../helpers/proc-common.h
	gcc -Wall -c hardcoded-process-tree.c

run:
	./hardcoded-process-tree

clean:
	rm -f hardcoded-process-tree.o hardcoded-process-tree


