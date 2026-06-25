# `fesetenv`

Sets the current floating-point environment.

## Syntax

```C
int fesetenv(
   const fenv_t *penv
);
```

### Parameters

*`penv`*\
Pointer to a `fenv_t` object that contains a floating-point environment as set by a call to [`fegetenv`](fegetenv1.md) or [`feholdexcept`](feholdexcept2.md). You can also specify the default startup floating-point environment by using the `FE_DFL_ENV` macro.

## Return value

Returns 0 if the environment was successfully set. Otherwise, it returns a nonzero value.

## Remarks

The **`fesetenv`** function sets the current floating-point environment from the value stored in the `fenv_t` object pointed to by *`penv`*. The floating point environment is the set of status flags and control modes that affect floating-point calculations. The environment includes the rounding mode and the status flags for floating-point exceptions.  If *`penv`* isn't `FE_DFL_ENV` or doesn't point to a valid `fenv_t` object, subsequent behavior is undefined.

A call to this function sets the exception status flags that are in the *`penv`* object, but it doesn't raise those exceptions.

To use this function, you must turn off floating-point optimizations that could prevent access by using the `#pragma fenv_access(on)` directive prior to the call. For more information, see [`fenv_access`](../../preprocessor/fenv-access.md).

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`fesetenv`** | \<fenv.h> | \<cfenv> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`fegetenv`](fegetenv1.md)\
[`feclearexcept`](feclearexcept1.md)\
[`feholdexcept`](feholdexcept2.md)\
[`fesetexceptflag`](fesetexceptflag2.md)