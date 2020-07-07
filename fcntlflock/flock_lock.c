#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/file.h>

#define LI_MAX_SIZE 10

struct lock_info {
	int fd;
	int fd_o_mode;
	char* path;
	int operation;
};

struct lock_info opened_locks[LI_MAX_SIZE];

int get_first_free_lockinfo_index() {
	int i;

	for (i = 0; i < LI_MAX_SIZE
			&& opened_locks[i].fd != 0; i++) ;

	return i < LI_MAX_SIZE ? i : -1;
}

void open_file(char* path, int mode) {
	int res = open(path, O_CREAT | mode, S_IRUSR | S_IWUSR);

	if (res < 0) {
		printf("Error while opening %s\n", path);
		return;
	}

	int i = get_first_free_lockinfo_index();
	if (i == -1) {
		printf("No space left\n");
		return;
	}

	opened_locks[i] = (struct lock_info) { .fd=res, .fd_o_mode=mode, .path=path, .operation=-1 };

	printf("Successfully opened file %s, fd: %d\n", path, res);
}

void deinit() {
	for (int i = 0; i < LI_MAX_SIZE
			&& opened_locks[i].path != NULL; i++) {
		unlink(opened_locks[i].path);
	}
}

void init() {
	for (int i = 0; i < LI_MAX_SIZE; i++) {
		opened_locks[i] = (struct lock_info) { .fd=0, .fd_o_mode=0, .path=NULL, .operation=-1 };
	}
}

void apply_lock(int index) {
	int cmd;
	
	switch (index) {
		case 0:
			cmd = LOCK_SH;
			break;
		case 1:
			cmd = LOCK_EX;
			break;
		case 2:
			cmd = LOCK_SH;
			break;
		case 3:
			opened_locks[index] = opened_locks[2];
			cmd = LOCK_SH;
			break;
		default:
			break;
	}

	// apply the lock
	int res = flock(opened_locks[index].fd, cmd);
	if (res < 0) {
		printf("Cannot apply lock on index %d\n", index);
		return;
	}

	// save the lock in the global array
	struct lock_info* flinfo = &(opened_locks[index]);
	flinfo->operation = cmd;

	printf("\n\t-------------------------------\n");
	printf("\t Lock applied to file %s, fd: %d\n", flinfo->path, flinfo->fd);
	printf("\t operation: %d\n", cmd);
	printf("\t-------------------------------\n\n");
}

void flush_stdin() {
	char c;

	while ((c = getchar()) != '\n' && c != EOF) ;
}

int main(int argc, char **argv) {
	init();

	open_file("read.lock", O_RDONLY);
	open_file("write.lock", O_WRONLY);
	open_file("partial_read.lock", O_RDWR);

	fgets(NULL, 0, stdin);
	flush_stdin();	// flush the stream to delete all unmatched characters
	apply_lock(0);

	fgets(NULL, 0, stdin);
	flush_stdin();
	apply_lock(1);

	fgets(NULL, 0, stdin);
	flush_stdin();
	apply_lock(2);

	fgets(NULL, 0, stdin);
	flush_stdin();
	apply_lock(3);

	fgets(NULL, 0, stdin);
	flush_stdin();

	deinit();
}

