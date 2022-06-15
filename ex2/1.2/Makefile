.PHONY: process-tree clean

process-tree: process-tree.o ../helpers/proc-common.o ../helpers/tree.o
	gcc -o process-tree process-tree.o ../helpers/proc-common.o ../helpers/tree.o

process-tree.o: process-tree.c ../helpers/proc-common.h ../helpers/tree.h
	gcc -Wall -c process-tree.c

ex1:
	./process-tree proc.tree

ex2:
	./process-tree test.tree    #1.1 example

ex3:
	./process-tree bad.tree

ex4:
	./process-tree proc.tree bad.tree

clean:
	rm -f process-tree.o process-tree
