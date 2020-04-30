when launching **dpkg -i {pkgname}**
it stops showing the following output:
	~~~
	...
	Unpacking {pkgname} (ver) over (old_ver)
	dpkg: error processing archive {pkgname} (--install):
	unable to clean up mess surrounding './usr/bin/{pkg}' before installing another version: Bad file
		descriptor
	...
	~~~

searching the first words of the last sentence in the dpkg repo we can see that this error is thrown in
[here](https://salsa.debian.org/dpkg-team/dpkg/-/blob/master/src/archives.c#L762).

To investigate this, we check the lines which precede that line and we can notice that for that piece of code
to be reached must happen 2 things:
	- the *lstat* SC fails, meaning that the file does not exists in that path
	- the **rename** SC fails, but with an error different from both ENOENT and ENOTDIR

Looking at the error that dpkg shows, we can see that the error is indedd different: **Bad file descriptor**
The documentation for the *rename* SC states that only **renameat()** and **renameat2()** can fail with
such an error (EBADF) since **rename()** only accepts 2 paths (no file descriptors).

This strange behavior could be due to the VUOS *rename* implementation. If we look at `vuos/vufs/vufstat.c`
we can see that the *rename* wrapper calls instead **renameat2**.

So this could be a bug of VUFS? Or at least an incostency?

