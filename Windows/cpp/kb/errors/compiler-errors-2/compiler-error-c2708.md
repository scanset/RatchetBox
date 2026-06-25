# Compiler Error C2708

> 'identifier' : actual parameters length in bytes differs from previous call or reference

## Remarks

A [__stdcall](../../cpp/stdcall.md) function must be preceded by a prototype. Otherwise, the compiler interprets the first call to the function as a prototype and this error occurs when the compiler encounters a call that does not match.

To fix this error add a function prototype.