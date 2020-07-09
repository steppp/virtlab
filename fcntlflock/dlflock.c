#define _GNU_SOURCE

#include <dlfcn.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdint.h>

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
	int res;
	int errno_backup;
	struct f_owner_ex *ownp_arg;
	int int_arg;
	uint64_t *uint_argp;

	// get the actual fcntl function address
	real_fcntl r_fcntl = (real_fcntl) dlsym(RTLD_NEXT, "fcntl");
	va_start(ap, cmd);

	switch (cmd) {
		case F_SETLK:
		case F_SETLKW:
		case F_GETLK:
			// retrieve the flock struct pointer from the variadic parameter
			lockinfo = va_arg(ap, struct flock *);
			printf("fcntl called to manage record locking\n");
			res = r_fcntl(fd, cmd, lockinfo);
			break;

		case F_GETOWN_EX:
		case F_SETOWN_EX:
			ownp_arg = va_arg(ap, struct f_owner_ex *);
			res = r_fcntl(fd, cmd, ownp_arg);
			break;

		case F_GET_RW_HINT:
		case F_SET_RW_HINT:
		case F_GET_FILE_RW_HINT:
		case F_SET_FILE_RW_HINT:
			uint_argp = va_arg(ap, uint64_t *);
			res = r_fcntl(fd, cmd, uint_argp);
			break;

		default:	// all fcntl calls that require an int as third argument
			int_arg = va_arg(ap, int);
			res = r_fcntl(fd, cmd, int_arg);
			break;
	}

	errno_backup = errno;
	va_end(ap);
	errno = errno_backup;
	return res;
}

