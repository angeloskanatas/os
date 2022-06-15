#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

/*
 * POSIX thread functions do not return error numbers in errno,
 * but in the actual return value of the function call instead.
 * This macro helps with error reporting in this case.
 */
#define perror_pthread(ret, msg) \
	do { errno=ret; perror(msg); } while (0)

#define N 1000000

#if defined(SYNC_ATOMIC) ^ defined(SYNC_MUTEX) == 0
# error You must #define exactly one of SYNC_ATOMIC or SYNC_MUTEX.
#endif

#if defined(SYNC_ATOMIC)
# define USE_ATOMIC_OPS 1
#else
# define USE_ATOMIC_OPS 0
#endif

pthread_mutex_t mutex=PTHREAD_MUTEX_INITIALIZER; //mutex initialization

void *increase_fn(void *arg) //T_increase
{
	int i, ret;
	volatile int *ip = arg;

	fprintf(stderr, "About to increase variable %d times\n", N);
	for (i = 0; i < N; i++) {
		if (USE_ATOMIC_OPS) {
			__sync_fetch_and_add(&ip, 1); //sync with gcc atomic operations
		} else { //sync with mutex
			ret=pthread_mutex_lock(&mutex); //acquire the lock (or wait
			if(ret)                         //to acquire it)
				perror_pthread(ret, "pthread_mutex_lock");
			++(*ip); //critical section
			ret=pthread_mutex_unlock(&mutex); //release the lock
			if(ret)
				perror_pthread(ret, "pthread_mutex_unlock");
		}
	}
	fprintf(stderr, "Done increasing variable.\n");

	return NULL;
}

void *decrease_fn(void *arg) //T_decrease
{
	int i, ret;
	volatile int *ip = arg;

	fprintf(stderr, "About to decrease variable %d times\n", N);
	for (i = 0; i < N; i++) {
		if (USE_ATOMIC_OPS) {
			__sync_fetch_and_add(&ip, -1); //sync with gcc atomic operations
		} else { //sync with mutex
			ret=pthread_mutex_lock(&mutex); //acquire the lock (or wait
			if(ret)                         //to acquire it)
				perror_pthread(ret, "pthread_mutex_lock");
			--(*ip); //critical section
			ret=pthread_mutex_unlock(&mutex); //release the lock
			if(ret)
				perror_pthread(ret, "pthread_mutex_unlock");
		}
	}
	fprintf(stderr, "Done decreasing variable.\n");

	return NULL;
}


int main(int argc, char *argv[])
{ /* main thread */
	int val, ret, ok;
	pthread_t t1, t2;

	/*
	 * initial value
	 */
	val=0;

	/*
	 * create threads
	 */
	ret=pthread_create(&t1, NULL, increase_fn, &val);
	if(ret) {
		perror_pthread(ret, "pthread_create");
		exit(1);
	}
	ret=pthread_create(&t2, NULL, decrease_fn, &val);
	if(ret) {
		perror_pthread(ret, "pthread_create");
		exit(1);
	}

	/*
	 * wait for threads to terminate
	 */
	ret=pthread_join(t1, NULL);
	if(ret)
		perror_pthread(ret, "pthread_join");
	ret=pthread_join(t2, NULL);
	if(ret)
		perror_pthread(ret, "pthread_join");

	/*
	 * is everything OK?
	 */
	ok=(val==0);

	ret=pthread_mutex_destroy(&mutex); //destroy the mutex object
	if(ret)
		perror_pthread(ret, "pthread_mutex_destroy");

	printf("%sOK, val = %d.\n", ok ? "" : "NOT ", val);

	return ok;
}
