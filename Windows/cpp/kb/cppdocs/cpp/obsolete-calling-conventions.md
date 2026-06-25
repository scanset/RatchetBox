# Obsolete Calling Conventions

**Microsoft Specific**

The **__pascal**, **__fortran**, and **__syscall** calling conventions are no longer supported. You can emulate their functionality by using one of the supported calling conventions and appropriate linker options.

\<windows.h> now supports the WINAPI macro, which translates to the appropriate calling convention for the target. Use WINAPI where you previously used PASCAL or **__far \__pascal**.

**END Microsoft Specific**

## See also

[Argument Passing and Naming Conventions](../cpp/argument-passing-and-naming-conventions.md)