# `feholdexcept`

Saves the current floating-point environment in the specified object, clears the floating-point status flags, and, if possible, puts the floating-point environment into non-stop  mode.

## Syntax

```C
int feholdexcept(
   fenv_t *penv
);
```

### Parameters

*`penv`*\
Pointer to an `fenv_t` object to contain a copy of the floating-point environment.

## Return value

Returns zero if and only if the function is able to successfully turn on non-stop floating-point exception handling.

## Remarks

The **`feholdexcept`** function is used to store the state of the current floating point environment in the `fenv_t` object pointed to by *`penv`*, and to set the environment to not interrupt execution on floating-point exceptions. This mode is known as *non-stop mode*.  This mode continues until the environment is restored using [`fesetenv`](fesetenv1.md) or [`feupdateenv`](feupdateenv.md).

You can use this function at the beginning of a subroutine that needs to hide one or more floating-point exceptions from the caller. To report an exception, you can clear the unwanted exceptions by using [`feclearexcept`](feclearexcept1.md), and then end the non-stop mode with a call to `feupdateenv`.

To use this function, you must turn off floating-point optimizations that could prevent access by using the `#pragma fenv_access(on)` directive prior to the call. For more information, see [`fenv_access`](../../preprocessor/fenv-access.md).

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`feholdexcept`** | \<fenv.h> | \<cfenv> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`feclearexcept`](feclearexcept1.md)\
[`fesetenv`](fesetenv1.md)\
[`feupdateenv`](feupdateenv.md)