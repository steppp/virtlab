#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int OPEN_FD;

void throw_err(const char msg[]) {
	printf("%s\n", msg);
	exit(-1);
}

/*
 * Request an integer input from 1 to nalt after asking
 * a question or printing a phrase to guide the user
 * if nalt is 0, every number is ok
 */
int get_user_input(const char question[], int nalt) {
	int response = 0;

	printf("%s ", question);

	// keep asking for a number util a correct one is provided
	while (scanf("%d", &response) < 1 ||
			(nalt != 0 && (response < 1 || response > nalt))) {
		printf("Please insert a number from 1 to %d\n", nalt);
	}

	return response;
}

void load_lockinfo_struct(struct flock *lockinfo) {
	const char* lwhence_hint = "Set l_whence (1) SEEK_SET (2) SEEK_CUR (3) SEEK_END: ";
	const char* lstart_hint = "Set l_start: ";
	const char* llen_hint = "Set l_len: ";
	const char* ltype_hint = "Set l_type (1) F_RDLCK (2) F_WRLCK: ";

	int lwhence_res = get_user_input(lwhence_hint, 3);
	lockinfo->l_whence = SEEK_SET;
	if (lwhence_res == 2) {
		lockinfo->l_whence = SEEK_CUR;
	} else if (lwhence_res == 3) {
		lockinfo->l_whence = SEEK_END;
	}

	lockinfo->l_start = get_user_input(lstart_hint, 0);
	lockinfo->l_len = get_user_input(llen_hint, 0);

	lockinfo->l_type = F_RDLCK;
	if (get_user_input(ltype_hint, 2) == 2) {
		lockinfo->l_type = F_WRLCK;
	}
}

void apply_lock(struct flock *lockinfo, int cmd) {
	int res = fcntl(OPEN_FD, cmd, lockinfo);

	if (res < 0) {
		printf("Cannot apply the lock\n\n");
	} else {
		printf("The file has been successfully locked.\n\n");
	}
}

int fcntl_get_locks_for_fd(int fd, struct flock* lockinfo) {
	lockinfo->l_type = F_WRLCK;
	lockinfo->l_whence = SEEK_SET;
	lockinfo->l_start = 0;
	lockinfo->l_len = 0;

	int res = fcntl(fd, F_GETLK, lockinfo);
	if (res < 0) {
		return -1;
	}

	return 0;
}

void print_status() {
	struct flock lockinfo;
	if (fcntl_get_locks_for_fd(OPEN_FD, &lockinfo) < 0) {
		printf("Cannot get lock info for file %d\n\n", OPEN_FD);
		return;
	}
	
	if (lockinfo.l_pid < 0) { // OFD lock
		printf("OFD lock\n");
	} else {
		printf("File has been locked using fcntl by process with PID %d", lockinfo.l_pid);
		printf("%s\n", lockinfo.l_pid == getpid() ? " (self)" : "");
	}

	printf("l_type = %d\n", lockinfo.l_type);
	printf("l_whence = %d\n", lockinfo.l_whence);
	printf("l_start = %d\n", lockinfo.l_start);
	printf("l_len = %d\n", lockinfo.l_len);
	printf("\n");
}

int manage_user_action(const char action) {
	struct flock lock_info;

	switch (action) {
		case 's':
			load_lockinfo_struct(&lock_info);
			apply_lock(&lock_info, F_SETLK);
			break;
		case 'p':
			print_status();
			break;
		case 'q':
			printf("Bye!\n");
			exit(0);
		default:
			return 0;
	}

	return 1;
}

void loop() {
	char c;
	int print_prompt = 0;
	printf("Choose an action: (s) apply a non-blocking lock (p) print lock info (q) quit\n");

	while (scanf("%c", &c) != EOF) {
		if (print_prompt) {
			printf("Choose an action: (s) apply a non-blocking lock (p) print lock info (q) quit\n");
			print_prompt = 0;
		}

		if (c == '\n') {
			continue;
		}

		print_prompt = manage_user_action(c);
	}
}

int main(int argc, char **argv) {
	// mode is: r=read, w=write, b=both
	if (argc < 3) {
		printf("Usage: %s lockfile mode\n", argv[0]);
		exit(-1);
	}

	int flag = O_RDONLY;
	char mode_char = argv[2][0];
	if (mode_char == 'w') {
		flag = O_WRONLY;
	} else if (mode_char == 'b') {
		flag = O_RDWR;
	}

	char* filepath = argv[1];

	// open the file descriptor using the selected mode
	int main_fd = open(filepath, O_CREAT | flag, S_IRUSR | S_IWUSR);
	if (main_fd < 0) {
		throw_err("Failed to open file descriptor");
	}

	OPEN_FD = main_fd;

	// enter main loop
	loop();

	// delete this file
	unlink(filepath);
}
