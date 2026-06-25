# `__setusermatherr`

Specifies a user-supplied routine to handle math errors, instead of the [`_matherr`](./reference/matherr.md) routine.

## Syntax

```cpp
void __setusermatherr(
   _HANDLE_MATH_ERROR pf
   )
```

#### Parameters

*`pf`*\
Pointer to an implementation of `_matherr` that is supplied by the user.

The type of the *`pf`* parameter is declared as `typedef int (__cdecl * _HANDLE_MATH_ERROR)(struct _exception *)`.

## Requirements

| Routine | Required header |
|---|---|
| **`__setusermatherr`** | `matherr.c` |