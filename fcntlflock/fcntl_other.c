#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
	int fd = open("/proc/locks", O_RDONLY);
	if (fd < 0) {
		printf("Error on open(2)\n");
		exit(fd);
	}

	int dupfd = fcntl(fd, F_DUPFD_CLOEXEC, 7);
	printf("F_DUPFD result: %d\n", dupfd);

	int fl = fcntl(dupfd, F_GETFL, 34);
	printf("F_GETFL result: %d\n", fl);

	// it seems that f_owner_ex and F_GETOWN_EX aren't defined anywhere
	//struct f_owner_ex ownexp;
	//fcntl(dupfd, F_GETOWN_EX, &ownexp);
	//printf("F_GETOWN_EX result: type %d, pid %d\n", ownexp.type, ownexp.pid);

	return 0;
}
