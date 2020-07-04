#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/file.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>

#define LONG_TEXT "this text contains mant many many characters as much as bytes (maybe)"

size_t tsize(const char text[]) {
    size_t txt_size = 0;
    char cur;

    while ((cur = text[txt_size]) != '\0') {
	txt_size++;
    }

    return txt_size;
}

int main(int argc, char **argv) {
    char *lockfile_path = argv[1];
    int main_fd;
    size_t lt_size;

    if (argc < 2) {
	printf("Usage: %s lockfile\n", argv[0]);
	exit(-1);
    }

    main_fd = open(lockfile_path, O_CREAT | O_APPEND, S_IRUSR | S_IWUSR);
    printf("Opened file %s with fd %d\n", lockfile_path, main_fd);

    lt_size = tsize(LONG_TEXT);
    printf("Text is %d bytes long\n", lt_size);
}