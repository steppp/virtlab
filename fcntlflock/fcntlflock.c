#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/file.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>

#define LONG_TEXT "this text contains mant many many characters as much as bytes (maybe)\n"

/*
 * Returns the size of the `text` char[]
 */
size_t tsize(const char text[]) {
    size_t txt_size = 0;
    char cur;

    while ((cur = text[txt_size]) != '\0') {
		txt_size++;
    }

    return txt_size;
}

void init() {
    return;
}

void loop() {
    char c;

    while ((c = getchar()) != EOF) {
		// ignore ENTER key
		if (c == '\n') {
	    	continue;
		}

		switch (c) {
			case 'n':
				printf("NNNNN\n");
				break;
			default:
				printf(":(\n");
		}
    }
}

int main(int argc, char **argv) {
    char *lockfile_path = argv[1];
    int main_fd;
    size_t lt_size;

    if (argc < 2) {
		printf("Usage: %s lockfile\n", argv[0]);
		exit(-1);
    }

	// open the file with the specified path
    main_fd = open(lockfile_path, O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
    printf("Opened file %s with fd %d\n", lockfile_path, main_fd);

	// get the text size
    lt_size = tsize(LONG_TEXT);
	// write the text to the opened file
    write(main_fd, LONG_TEXT, lt_size);


	

	
	// delete the file that has been created at the start
	unlink(lockfile_path);
}
