# VUOS MODULES

A module is a **shared library**.
Each module must define a permanent (global) variable of type *struct vu_module_t*  named **vu_module**.

## How a module is loaded

To load a module the user must launch the command *vu_insmod {module}*.
Then the chain is `vu_insmod.c:main`
			'-> `include/vulib.h:vu_insmod`
				'-> `purelibc/syscalls.c:syscall`
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
