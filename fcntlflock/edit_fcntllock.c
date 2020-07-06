#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define LI_MAX_SIZE 10

struct lock_info {
	int fd;
	int fd_o_mode;
	char* path;
	struct flock* lock_params;
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

	opened_locks[i] = (struct lock_info) { .fd=res, .fd_o_mode=mode, .path=path, .lock_params=NULL };

	printf("Successfully opened file %s, fd: %d\n", path, res);
}

void deinit() {
	for (int i = 0; i < LI_MAX_SIZE
			&& opened_locks[i].path != NULL
			&& opened_locks[i].lock_params != NULL; i++) {
		unlink(opened_locks[i].path);
		free(opened_locks[i].lock_params);
	}
}

void init() {
	for (int i = 0; i < LI_MAX_SIZE; i++) {
		opened_locks[i] = (struct lock_info) { .fd=0, .fd_o_mode=0, .path=NULL, .lock_params=NULL };
	}
}

void apply_lock(int index) {
	// malloc'ing this because it will be stored after the method returns
	struct flock* lockinfo = malloc(sizeof(struct flock));
	int cmd;
	
	switch (index) {
		case 0:
			*lockinfo = (struct flock) { F_RDLCK, SEEK_SET, 0, 0 };
			cmd = F_SETLK;
			break;
		case 1:
			*lockinfo = (struct flock) { F_WRLCK, SEEK_SET, 0, 0 };
			cmd = F_SETLK;
			break;
		case 2:
			*lockinfo = (struct flock) { F_RDLCK, SEEK_SET, 5, 7 };
			cmd = F_SETLK;
			break;
		default:
			break;
	}

	// apply the lock
	int res = fcntl(opened_locks[index].fd, cmd, lockinfo);
	if (res < 0) {
		printf("Cannot apply lock on index %d\n", index);
		return;
	}

	// save the lock in the global array
	struct lock_info* flinfo = &(opened_locks[index]);
	flinfo->lock_params = lockinfo;

	printf("\n\t-------------------------------\n");
	printf("\t Lock applied to file %s, fd: %d\n", flinfo->path, flinfo->fd);
	printf("\t l_type: %d\n", lockinfo->l_type);
	printf("\t l_whence: %d\n", lockinfo->l_whence);
	printf("\t l_start: %d\n", lockinfo->l_start);
	printf("\t l_len: %d\n", lockinfo->l_len);
	printf("\t-------------------------------\n\n");
}

void populate_file(int fd) {
	char* text = "this is the file content\n";
	
	size_t writtenb = write(fd, text, 100);
	printf("%d bytes written to fd %d\n", writtenb, fd);
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

	// write something into the file that will be partially locked
	populate_file(opened_locks[2].fd);

	fgets(NULL, 0, stdin);
	flush_stdin();	// flush the stream to delete all unmatched characters
	apply_lock(0);

	fgets(NULL, 0, stdin);
	flush_stdin();
	apply_lock(1);

	fgets(NULL, 0, stdin);
	flush_stdin();
	apply_lock(2);

	deinit();
}
