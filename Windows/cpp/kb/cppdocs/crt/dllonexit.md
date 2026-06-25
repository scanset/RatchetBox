# `__dllonexit`

Registers a routine to be called at exit time.

## Syntax

```C
_onexit_t __dllonexit(
   _onexit_t func,
   _PVFV **  pbegin,
   _PVFV **  pend
   );
```

#### Parameters

*`func`*\
Pointer to a function to be executed upon exit.

*`pbegin`*\
Pointer to a variable that points to the beginning of a list of functions to execute on detach.

*`pend`*\
Pointer to variable that points to the end of a list of functions to execute on detach.

## Return value

If successful, a pointer to the user's function. Otherwise, a `NULL` pointer.

## Remarks

The `__dllonexit` function is analogous to the [`_onexit`](./reference/onexit-onexit-m.md) function except that the global variables used by that function aren't visible to this routine. Instead of global variables, this function uses the `pbegin` and `pend` parameters.

The `_onexit` and `atexit` functions in a DLL linked with MSVCRT.LIB must maintain their own atexit/_onexit list. This routine is the worker that gets called by such DLLs.

The `_PVFV` type is defined as `typedef void (__cdecl *_PVFV)(void)`.

## Requirements

| Routine | Required file |
|---|---|
| **`__dllonexit`** | `onexit.c` |

## See also

[`_onexit`, `_onexit_m`](./reference/onexit-onexit-m.md)