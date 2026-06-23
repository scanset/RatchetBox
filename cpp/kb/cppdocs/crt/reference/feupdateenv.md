# `feupdateenv`

Saves the currently raised floating-point exceptions, restores the specified floating-point environment state, and then raises the saved floating-point exceptions.

## Syntax

```C
int feupdateenv(
   const fenv_t* penv
);
```

### Parameters

*`penv`*\
Pointer to a `fenv_t` object that contains a floating-point environment as set by a call to [`fegetenv`](fegetenv1.md) or [`feholdexcept`](feholdexcept2.md). You can also specify the default startup floating-point environment by using the `FE_DFL_ENV` macro.

## Return value

Returns 0 if all actions completed successfully. Otherwise, it returns a nonzero value.

## Remarks

The **`feupdateenv`** function performs multiple actions. First, it stores the current raised floating-point exception status flags in automatic storage. Then, it sets the current floating-point environment from the value stored in the `fenv_t` object pointed to by *`penv`*. If *`penv`* isn't `FE_DFL_ENV` or doesn't point to a valid `fenv_t` object, subsequent behavior is undefined. Finally, **`feupdateenv`** raises the locally stored floating-point exceptions.

To use this function, you must turn off floating-point optimizations that could prevent access by using the `#pragma fenv_access(on)` directive prior to the call. For more information, see [`fenv_access`](../../preprocessor/fenv-access.md).

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`feupdateenv`** | \<fenv.h> | \<cfenv> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`fegetenv`](fegetenv1.md)\
[`feclearexcept`](feclearexcept1.md)\
[`feholdexcept`](feholdexcept2.md)\
[`fesetexceptflag`](fesetexceptflag2.md)