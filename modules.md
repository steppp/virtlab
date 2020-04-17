# VUOS MODULES

A module is a **shared library**.
Each module must define a permanent (global) variable of type *struct vu_module_t*  named **vu_module**.

## How a module is loaded

**NOTE THAT THE FOLLOWING IS WRONG, OR CONTAINS HIGHLY IMPRECISE INFORMATION**

---

To load a module the user must launch the command *vu_insmod {module}*
Then the chain is `cmd/vu_insmod.c:main` (using vuos as root)
			'-> `include/vulib.h:vu_insmod`
				'-> `../purelibc/syscalls.c:syscall`
					'-> `sycalls.c:_pure_syscall` o `syscalls.c:_pure_native_syscall`
both methods are initialized in `syscalls.c:init` with the actual (?) syscall
`_pure_native_syscall` is called if a native, non-virtualized SC is desired (?)
`_pure_syscall` otherwise -> set by `_pure_start` that accepts the implementation as an argument
					'-> called from `umvu/src/vu_nesting.c:vu_nesting_enable`
						passing the `vu_nesting.c:capture_nested_syscall` as
						an implementation for `_pure_syscall`, and the result is
						stored in the `native_syscall` variable for performing
						the native SC
	-> `purelibc/syscall.c:_pure_syscall` in the end references to `vu_nesting.c:capture_nested_syscall`)

---

**THIS SHOULD BE THE CORRECT EXECUTION SEQUENCE**
If **seccomp** is used, there is a _filter_ that is checked against every time a sycall is performed.
If the syscall satisfies some conditions in such filter, the method that should manage the syscall execution
is launched.
This setup is performed at the very beginning of the execution of UMVU, more precisely in the
`umvu_main.c:main` function. Here there is a call to `umvu_tracer.c:umvu_tracepid` at row 192.
This function prepares the tracing of system calls with **PTRACE** and **seccomp** (if enabled) and sets the
syscall handler to the function obtained as a parameter which is `vu_execute.c:vu_syscall_execute`.
After these intialization steps, the actual tracer function is called at row 455 with `umvu_trace` (that has
been initialized in `umvu_tracer_fork` as `umvu_tracer_seccomp`, if seccomp is enabled).

**VU_INSMOD** (and others) is implemented as a new SC that is captured by _PTRACE_  and its number is -1
	(defined in `include/vulib.h`)

`vu_syscalls.conf` is used to generate various files, such as `build/umvu_dynsrc/syscall_table.c` which
contains two syscall arrays (one for real syscalls and the other for virtual ones) where each SC number is
associated with its respective **choice** and **wrap** functions, and two syscall names array where each SC
number is linked to its name, both for real and virtual syscalls.

The **wrap** function is, in the case of virtual SCs, a module-specific function implementation that should
be declared and provided a default body in `include/vulib.h` while its actual implementation should be placed
in `umvu/src/vu_vwrap_vumgmt.c`.
Here the name of the desired module is retrieved by peeking the SC's registers and then the method calls
`vu_modutils.c:module_load(name)` that in turns calls `module_dlopen`. This last function performs the
actual dlopen-ing of the library trying to find it in multiple paths.
After that, `module_load` *dlsym-s* the **vu_module** field of the loaded module to get its name description
and loads all the syscalls implemented by this module in _service->module_syscalls[]_ searching their name 
in the module just loaded with _dlopen_. See `vuos/umvu/include/service.h` for more info about the
_vu_module_ struct.
Its type should be void, and it should accept two parameters, a *vuht_entry_t* and a *syscall_descriptor_t*
The **choice** function process the actual arguments of a system call request and returns the pointer to the
hash table entry which is responsible to handle the request. When a choice function returns NULL it means
that the request has not to be virtualized, so it is forwarded to the kernel.
See more in `vuos/umvu/include/syscall_table.h`.


