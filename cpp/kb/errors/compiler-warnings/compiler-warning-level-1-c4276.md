# Compiler Warning (level 1) C4276

> 'function' : no prototype provided; assumed no parameters

## Remarks

When you take the address of a function with the [__stdcall](../../cpp/stdcall.md) calling convention, you must give a prototype so the compiler can create the function's decorated name. Since *function* has no prototype, the compiler, when creating the decorated name, assumes the function has no parameters.