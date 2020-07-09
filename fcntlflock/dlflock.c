#define _GNU_SOURCE

#include <dlfcn.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>

// define the type of the original function to be used with dlsym
typedef int (*real_flock)(int, int);

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

	return ((real_flock)dlsym(RTLD_NEXT, "flock"))(fd, operation);
}
	
