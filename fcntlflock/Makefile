BUILDDIR=build

all: clean builddir fcntl_lock.c flock_lock.c fcntl_other.c dlflock
	gcc -o $(BUILDDIR)/fcntl_lock fcntl_lock.c
	gcc -o $(BUILDDIR)/fcntl_other fcntl_other.c
	gcc -o $(BUILDDIR)/flock_lock flock_lock.c

dlflock: dlflock.c
	gcc -shared -fPIC -o build/dlflock.so dlflock.c -ldl

builddir:
	mkdir $(BUILDDIR)

clean:
	rm -rf $(BUILDDIR)
