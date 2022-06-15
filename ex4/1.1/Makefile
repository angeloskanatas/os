.PHONY: all clean

all: mmap

CC = gcc
CFLAGS = -g -Wall -Wextra -O2

mmap: mmap.o ../helpers/help.o
	$(CC) $(CFLAGS) -o mmap mmap.o ../helpers/help.o

mmap.o: mmap.c ../helpers/help.h
	$(CC) $(CFLAGS) -c mmap.c

clean:
	rm -f mmap.o mmap
