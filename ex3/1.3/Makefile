CC = gcc
CFLAGS = -Wall -O2 -pthread

.PHONY: kgarten cp-kgarten clean

kgarten: kgarten.o ../helpers/proc-safe.o
	$(CC) $(CFLAGS) -o kgarten kgarten.o ../helpers/proc-safe.o

kgarten.o: kgarten.c ../helpers/proc-safe.h
	$(CC) $(CFLAGS) -c kgarten.c

cp-kgarten: cp-kgarten.o ../helpers/proc-safe.o #more children priority
	$(CC) $(CFLAGS) -o cp-kgarten cp-kgarten.o ../helpers/proc-safe.o

cp-kgarten.o: cp-kgarten.c ../helpers/proc-safe.h
	$(CC) $(CFLAGS) -c cp-kgarten.c

clean:
	rm -f kgarten.o cp-kgarten.o kgarten cp-kgarten
