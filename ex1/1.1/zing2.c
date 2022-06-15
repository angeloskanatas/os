#include <stdio.h>
#include <unistd.h>

void zing(void)
{
	printf("eimaste oi, %s\n", getlogin());
}

