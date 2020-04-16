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

**VU_INSMOD** is implemented as a new SC that is captured by _purelibc_ and its number is -1 (defined in
	`include/vulib.h`)
