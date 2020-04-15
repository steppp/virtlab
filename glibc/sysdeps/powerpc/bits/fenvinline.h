/* Inline floating-point environment handling functions for powerpc.
   Copyright (C) 1995-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#if defined __GNUC__ && !defined _SOFT_FLOAT && !defined __NO_FPRS__

/* Inline definitions for fegetround.  */
# define __fegetround_ISA300()						\
  (__extension__  ({							\
    union { double __d; unsigned long long __ll; } __u;			\
    __asm__ __volatile__ (						\
      ".machine push; .machine \"power9\"; mffsl %0; .machine pop"	\
      : "=f" (__u.__d));						\
    __u.__ll & 0x0000000000000003LL;					\
  }))

# define __fegetround_ISA2()						\
  (__extension__  ({							\
     int __fegetround_result;						\
     __asm__ __volatile__ ("mcrfs 7,7 ; mfcr %0"			\
			   : "=r"(__fegetround_result) : : "cr7");	\
     __fegetround_result & 3;						\
  }))

# ifdef _ARCH_PWR9
#  define __fegetround() __fegetround_ISA300()
# elif defined __BUILTIN_CPU_SUPPORTS__
#  define __fegetround()						\
  (__glibc_likely (__builtin_cpu_supports ("arch_3_00"))		\
   ? __fegetround_ISA300()						\
   : __fegetround_ISA2()						\
  )
# else
#  define __fegetround() __fegetround_ISA2()
# endif

# define fegetround() __fegetround ()

# ifndef __NO_MATH_INLINES

/* Builtins to mtfsb0 and mtfsb1 was introduced on GCC 9.  */
#  if !__GNUC_PREREQ(9, 0)
/* The weird 'i#*X' constraints on the following suppress a gcc
   warning when __excepts is not a constant.  Otherwise, they mean the
   same as just plain 'i'.  This warning only happens in old GCC
   versions (gcc 3 or less).  Otherwise plain 'i' works fine.  */
#   define __MTFSB0(__b) __asm__ __volatile__ ("mtfsb0 %0" : : "i#*X" (__b))
#   define __MTFSB1(__b) __asm__ __volatile__ ("mtfsb1 %0" : : "i#*X" (__b))
#  else
#   define __MTFSB0(__b) __builtin_mtfsb0 (__b)
#   define __MTFSB1(__b) __builtin_mtfsb1 (__b)
#  endif

#  if __GNUC_PREREQ(3, 4)

#include <sys/param.h>

/* Inline definition for feraiseexcept.  */
#   define feraiseexcept(__excepts) \
  (__extension__  ({ 							      \
    int __e = __excepts;						      \
    int __ret = 0;							      \
    if (__builtin_constant_p (__e)					      \
        && powerof2 (__e)						      \
        && __e != FE_INVALID)						      \
      {									      \
	__MTFSB1 ((__builtin_clz (__e)));				      \
      }									      \
    else								      \
      __ret = feraiseexcept (__e);					      \
    __ret;								      \
  }))

/* Inline definition for feclearexcept.  */
#   define feclearexcept(__excepts) \
  (__extension__  ({ 							      \
    int __e = __excepts;						      \
    int __ret = 0;							      \
    if (__builtin_constant_p (__e)					      \
        && powerof2 (__e)						      \
        && __e != FE_INVALID)						      \
      {									      \
	__MTFSB0 ((__builtin_clz (__e)));				      \
      }									      \
    else								      \
      __ret = feclearexcept (__e);					      \
    __ret;								      \
  }))

#  endif /* __GNUC_PREREQ(3, 4).  */

# endif /* !__NO_MATH_INLINES.  */

#endif /* __GNUC__ && !_SOFT_FLOAT && !__NO_FPRS__ */
