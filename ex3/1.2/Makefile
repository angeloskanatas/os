CC = gcc
CFLAGS = -Wno-pointer-to-int-cast -Wno-int-to-pointer-cast -O2 -pthread

.PHONY: mandel clean

mandel: mandel.o ../helpers/mandel-lib.o ../helpers/proc-safe.o
	$(CC) $(CFLAGS) -o mandel mandel.o ../helpers/mandel-lib.o ../helpers/proc-safe.o

mandel.o: mandel.c ../helpers/mandel-lib.h ../helpers/proc-safe.h
	$(CC) $(CFLAGS) -c mandel.c

clean:
	rm -f mandel.o mandel
