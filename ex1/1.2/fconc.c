#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <stdlib.h>
#include <string.h>

#define OFLAGS_AND_MODE_W O_CREAT | O_WRONLY | O_TRUNC,\
	S_IRUSR | S_IWUSR

// write to output-called by write_file()
void doWrite(int fd, int fd_in, const char *buff, int len) //we add fd_in as argument
{                                                          //in case write fails so
	size_t idx=0; //index in buffer                    //we can close the infile
	ssize_t wcnt;
	do {
		wcnt=write(fd, buff+idx, len-idx); //bytes i have wrote
		if(wcnt==-1) {
			perror("write");
			close(fd_in); //close infile
			close(fd); //close outfile
			exit(1);
		}
		idx+=wcnt; //slide the index
	} while(idx<len);
}

// read from input file and write to the ouput file using doWrite()
void write_file(int fd, const char *infile)
{
	char buff[1024]; //buffer
	ssize_t rcnt;
	int fd_in;
	fd_in=open(infile, O_RDONLY);
	if(fd_in==-1) { //error opening the file
		perror("open");
		close(fd); //close outfile
		exit(1);
	}
	for(;;) {
		rcnt=read(fd_in, buff, sizeof(buff)); //bytes i have read
		if (rcnt==0) break; //end of file
		if(rcnt==-1) {
			perror("read");
			close(fd_in); //close infile
			close(fd); //close outfile
			exit(1);
		}
		doWrite(fd, fd_in, buff, rcnt);
	}
	close(fd_in);
}


int main(int argc, char **argv)
{
	if(argc!=3 && argc!=4) { //check if arguments are OK
		printf("Usage: ./fconc infile1 infile2 [outfile (default:fconc.out)]\n");
		exit(1);
	} else {
		int fd_out;
		if(argc==3) { //default output
			fd_out=open("fconc.out", OFLAGS_AND_MODE_W);
		} else { //output defined by 3rd argument
			fd_out=open(argv[3], OFLAGS_AND_MODE_W);
		}
		if(fd_out==-1) { //error opening the output file
			perror("open");
			exit(1);
		} else {
			if(((argc==4) && (strcmp(argv[1], argv[3])!=0)) || argc==3) write_file(fd_out, argv[1]); //check if input files match the output file so we can
			if(((argc==4) && (strcmp(argv[2], argv[3])!=0)) || argc==3) write_file(fd_out, argv[2]); //ignore them (if we don't do this in some cases we will fall
		 	close(fd_out);                                                                           //in an endless loop), another alternative is to output an error
		}                                                                                                //message like: 'Input files must be different from the output file'
	}
	return 0;
} 









