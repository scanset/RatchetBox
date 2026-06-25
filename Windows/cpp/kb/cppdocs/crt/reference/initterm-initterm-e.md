# `_initterm`, `_initterm_e`

Internal methods that walk a table of function pointers and initialize them.

The first pointer is the starting location in the table and the second pointer is the ending location.

## Syntax

```C
void __cdecl _initterm(
   PVFV *,
   PVFV *
);

int __cdecl _initterm_e(
   PIFV *,
   PIFV *
);
```

## Return value

A non-zero error code if an initialization fails and throws an error; 0 if no error occurs.

## Remarks

These methods are only called internally during the initialization of a C++ program. Don't call these methods in a program.

When these methods walk a table of function entries, they skip `NULL` entries and continue.

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)