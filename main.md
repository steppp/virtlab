# Main project file

**FINAL GOAL:** provide a virtualization layer for _file locking_ APIs in **VUOS**

**THIS PROJECT CONSISTS IN:**
1. studying the different file locking APIs that are provided by the OS and undestand how they work and relate to each other;
2. checking if and how a unified version of such APIs can be defined in order to minimize the set of SCs tha the modules should implement;
3. finding the right level to do this work
	- **core**: slows down execution even when not necessary (?)
	- **module**: every module is forced to implement this functionality (?)
	- **submodule**: allows to provide a unified experience along different users (intended as programs) that use resources without using **UMVU** as intermediary (?)
4. proposing an implementation based on the decisions taken in previous steps

## 1 - Analyze all locking SCs provided by Linux

- **flock(_int fd_, _int operation_)**: create or remove an advisory lock for the entire file pointed to by _fd_

	possible values for _operation_ are:
	
	- LOCK_SH: applies a shared lock
	- LOCK_EX: applies an exclusive lock
	- LOCK_UN: removes the lock for the specified _fd_
	
	**flock** peculiarities:

	- **BLOCKING** call, if performed on a _fd_ which has an incompatible lock (fcntl) or has an _exclusive lock_
	- to avoid blocking the execution, _operation_ can be OR'ed with **LOCK_NB**; doing this the execution doesn't stop in any case, and if it should have been, the call returns an **EWOULDBLOCK** error
	- in Linux, **flock** and **fcntl** have a different semantic in regards to *fork* and *dup*, and they shouldn't be compatible
	- when working with locks on a *NFS* fs, the two lock types can interact since **flock** is not supported in suche filesystems so **fcntl** is used instead
	- if a process obtains multiple _file descriptors_ for the same file using *open* (or similar), these are treated independently: applying a lock on different _fd_s that refers to the same file will yield an error after the first successful call
	- the lock type on a file can be **change**, although it's **not an atomical operation**
	- a process can have a maximum of one lock on a single file; subsequent calls can cause the **change of the lock type**
	- locks applied by **flock** are preserved after an **execve** or **fork**

- **fcntl(_int fd_, _int cmd_, _struct flock *lock_)**: creates, removes, or retrieves information on a lock which applies to parts of a file, specified by _fd_
	
	possible values for _cmd_ are:

	- F_SETLK: applies the lock, if one already exists for the desired region, the call returns -1 and _errno_ is set accordingly
	- F_SETLKW: applies the lock, entering a **waiting state** if one already exists for the specified region
	- F_GETLK: retrieves information on locks already applied on parts of a file (see man fcntl -> Advisory record locking)
	
	the _struct flock_ pointer contains information on the lock that is about to be applied (or is loaded with infotmation about a particular lock following an **F_GETLK**)
	and is made of the following fields:

	- short l_type: lock type (F_RDLCK - read lock, F_WRLCK - write lock, F_UNLCK - unlock)
	- short l_whence: *l_start* starting point (SEEK_SET - file start, SEEK_CUR - current position, SEEK_END - file end)
	- off_t l_start: starting offset of the lock
	- off_t l_len: lock length, if = 0 the **entire file is considered, no matter on how much it will grow**; can be < 0 if *l_whence* = **SEEK_CUR** or **SEEK_END**
	
	**fcntl** peculiarities:

	- a process can only acquire a single lock on a specified file region; if another lock request is performed, the lock is converted to the new type (this could lead to a split, shrink or coalescence of regions)
	- a file should be opened in write mode to apply *write locks*, in read mode for *read locks*
	- there is **deadlock** detection when locks are placed using **F_SETLKW**
	- locks are automatically released when a process ends
	- locks applied from **fcntl** are preserved after an **execve**, but not across a **fork**
	- locks are tied to the process, and this could have undesired consequences: if a process closes a _fd_, every open lock that process acquired on the _fd_'s pointed file are released; in addition, every thread in a process shares the same locks; to solve such problems **open file description** locks have been created
	- **OFD** behaves basically as the normal ones
	- the names tells that they are not tied to the process that acquired them, but instead they are **tied to the file descriptor** used to acquire the lock, similar to **flock**
	- they are inherited from childs after a **fork** or a **clone**, and they are automatically realeased afer the last *open file description* is closed
	- traditional and *OFD* locks can be in conflict
	- insted, locks applied to the same _fd_ are compatible, and it's valid what has been said for traditional locks
	- *OFD* locks acquired from different _fd_s can conflict, so they can be used to sync different threads of the same process, if each one **open**s its own _fd_ on the same file
	- the *l_pid* field of **struct flock** **MUST** be set to 0
	- *OFD* locks management commands are very similar to the traditional counterpart: **F_OFD_SETLK**, **F_OFD_SETLKW**, **F_OFD_GETLK**
	- there is no **deadlock** detection using this method

- **lockf(_int fd_, _int cmd_, _off_t len_)**: INTERFACE BUILT ON TOP OF **fcntl**
	
	possible values for _cmd_ are:

	- F_LOCK: applies an exclusive lock on the specified region of the file, entering a waiting state if there that region is already locked
	- F_TLOCK: **non-blocking** version of the above, returning an error instead of waiting
	- F_ULOCK: release a lock on the specified file region (that could cause splitting/... if only a part of it is released)
	- F_TEST: returns 0 if the region isn't locked or if it is locked by the current process, -1 if another process owns the lock (_errno_ set)
	_len_ is used to tell how many bytes the operation should involve, if 0 the entire file is used


**In summary**: there are only 2 effectively distinct ways to operate with locks in Linux:

- one is using **flock**
- the other using **fcntl**, since **lockf** is just a convenience wapper built on top of it

## 2 - Design (if possible) a unified version of locking APIs

It seems that **flock** itself could be implemented without many problems using only **fcntl** locking APIs since the capabilities of the former are
a subset of the ones of the latter:

- a *shared lock* can be obtained by applying a *read* one with **fcntl**
- an *exclusive lock* on the other hand corresponds to a *write lock*
- removal of a lock is a common functionality
- **flock** applies locks to ENTIRE files, and **fcntl** locks can easily do that as well

Where to pay attention:

- different behavior on **execve**, **fork** and **dup**
- **OFD** locks have some major differences with plain **fcntl** locks, and they are more similar to **flock**
- understand precisely how **fcntl** behaves when managing locks on entire file, and how this differs from **flock**
- interaction between different types of locks - is making them compatible safe or has incompatibility to be kept?
- differences when locks involve different threads

lock API | flock | fcntl | fcntl (OFD)
--- | --- | --- | ---
granularity | entire file | byte | same as non-OFD
file already locked call behaviour | blocking, non blocking if _cmd_ is OR'ed with **LOCK_NB** | non-blocking with **F_SETLK**, blocking with **F_SETLKW** | same as non-OFD
deadlock detection | NO | YES (with **F_SETLKW**) | NO
preserved after **execve** | YES | YES | ?
preserved after fork | YES | NO | YES
locks applied to different _fd_ independancy | indpendant only if _fd_ is obtained with multiple **open** or similar | **extremely dependant**: closing a fd will cause _ALL_ of the process' locks to be released | independant if _fd_ is actually a different OFD, duplicate _fd_ (**fork**/**dup**) can be used interchangeably
