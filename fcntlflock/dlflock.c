#define _GNU_SOURCE

#include <dlfcn.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <stdarg.h>

// define the type of the original flock function to be used with dlsym
typedef int (*real_flock)(int, int);
// define the type of the original fcntl function to be used with dlsym
typedef int (*real_fcntl)(int, int, ...);

// override the flock SC
int flock(int fd, int operation) {
	// check whether the call has to be BLOCKING
	int noblock = operation & LOCK_NB; 
	printf("%sblocking flock call\n", noblock ? "non-" : "");

	switch (operation & ~LOCK_NB) {
		case LOCK_SH:	// apply SHARED lock
			printf("SHARED ");
			break;
		case LOCK_EX:	// apply EXCLUSIVE lock
			printf("EXCLUSIVE ");
			break;
		case LOCK_UN:	// UNlock
			printf("UN");
			break;
		default:		// operation is invalid
			return EINVAL;
	}

	printf("lock\n");

	return ((real_flock)dlsym(RTLD_NEXT, "flock"))(fd, operation);
}
	
int fcntl(int fd, int cmd, ...) {
	va_list ap;
	struct flock *lockinfo;
	void *argp;
	int res;

	// get the actual fcntl function address
	real_fcntl r_fcntl = (real_fcntl) dlsym(RTLD_NEXT, "fcntl");
	va_start(ap, cmd);

	switch (cmd) {
		case F_SETLK:
		case F_SETLKW:
		case F_GETLK:
			// retrueve the flock struct pointer from the variadic parameter
			lockinfo = va_arg(ap, struct flock *);
			printf("fcntl called to manage record locking\n");
			res = r_fcntl(fd, cmd, lockinfo);
			break;
		default:
			// same as above
			argp = va_arg(ap, void *);
			res = r_fcntl(fd, cmd, argp);
			break;
	}

	va_end(ap);
	return res;
}

