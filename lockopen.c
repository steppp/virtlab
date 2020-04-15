#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

int main(int argc, char **argv) {
	const char *path = "/var/cache/apt/archives/lock";
	int fd = open(path, O_RDONLY);
	int err = 0;

	if (fd == -1) {
		err = errno;
		printf("error: %d\n", err);
	}

	return err;
}
