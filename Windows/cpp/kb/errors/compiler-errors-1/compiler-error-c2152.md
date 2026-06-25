# Compiler Error C2152

> 'identifier' : pointers to functions with different attributes

## Remarks

A pointer to a function with one calling convention (**`__cdecl`**, **`__stdcall`**, or **`__fastcall`**) is assigned to a pointer to a function with another calling convention.