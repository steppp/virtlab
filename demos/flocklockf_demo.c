#include <stdio.h>
#include <sys/file.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>

int main(int argc, char **argv) {
	char name[30] = "/var/cache/apt/archives/";
	int fd = open(name, O_RDWR | O_CREAT, S_IRWXU | S_ISVTX);

	if (fd == -1) {
		printf("Open failed\n");
		exit(errno);
	}

	if (flock(fd, LOCK_EX) == -1) {
		printf("flock failed\n");
		exit(errno);
	}
	
	if (flock(fd, LOCK_UN) == -1) {
		printf("un-flock failed\n");
		exit(errno);
	}

	if (lockf(fd, F_LOCK, 0) == -1) {
		printf("lockf failed\n");
		exit(errno);
	}
	
	if (lockf(fd, F_ULOCK, 0) == -1) {
		printf("un-lockf failed\n");
		exit(errno);
	}

	struct flock lock = {.l_type=F_WRLCK, .l_whence=SEEK_SET, .l_start=0, .l_len=0};
	if (fcntl(fd, F_SETLKW, &lock) == -1) {
		printf("fcntl failed: %d\n", errno);
		exit(errno);
	}
	
	struct flock unlock = {.l_type=F_UNLCK, .l_whence=SEEK_SET, .l_start=0, .l_len=0};
	if (fcntl(fd, F_SETLK, &unlock) == -1) {
		printf("un-fcntl failed\n");
		exit(errno);
	}

	close(fd);
	return 0;
}
