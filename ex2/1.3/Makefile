.PHONY: process-tree-sig clean

process-tree-sig: process-tree-sig.o ../helpers/proc-common.o ../helpers/tree.o
	gcc -o process-tree-sig process-tree-sig.o ../helpers/proc-common.o ../helpers/tree.o

process-tree-sig.o: process-tree-sig.c ../helpers/proc-common.h ../helpers/tree.h
	gcc -Wall -c process-tree-sig.c

ex1:
	./process-tree-sig proc.tree

ex2:
	./process-tree-sig test.tree    #1.1 example

ex3:
	./process-tree-sig bad.tree

ex4:
	./process-tree-sig proc.tree bad.tree

clean:
	rm -f process-tree-sig.o process-tree-sig
