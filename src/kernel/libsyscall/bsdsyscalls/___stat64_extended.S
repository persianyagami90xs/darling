#define __SYSCALL_32BIT_ARG_BYTES 16
#include "SYS.h"

#ifndef SYS_stat64_extended
#error "SYS_stat64_extended not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__arm64__)
MI_ENTRY_POINT(___stat64_extended)
SYSCALL_NONAME(stat64_extended, 4, cerror_nocancel)
ret
#else
#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(___stat64_extended, stat64_extended, 4, cerror_nocancel)
#endif

#endif

