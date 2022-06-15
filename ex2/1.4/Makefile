.PHONY: comp-expr-tree clean

comp-expr-tree: comp-expr-tree.o ../helpers/proc-common.o ../helpers/tree.o
	gcc -o comp-expr-tree comp-expr-tree.o ../helpers/proc-common.o ../helpers/tree.o

comp-expr-tree.o: comp-expr-tree.c ../helpers/proc-common.h ../helpers/tree.h
	gcc -Wall -c comp-expr-tree.c

ex1:
	./comp-expr-tree expr.tree   #10+4*(5+7)

ex2:
	./comp-expr-tree test.tree   #10*(5+6)

ex3:
	./comp-expr-tree testagain.tree #2*(3+4)+6*(1+3)

ex4:
	./comp-expr-tree bad.tree

ex5:
	./comp-expr-tree expr.tree test.tree

clean:
	rm -f comp-expr-tree.o comp-expr-tree
