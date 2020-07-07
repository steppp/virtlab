all: clean fcntl_lock.c flock_lock.c
	mkdir build
	gcc -o build/fcntl_lock fcntl_lock.c
	gcc -o build/flock_lock flock_lock.c

clean:
	rm -rf build
