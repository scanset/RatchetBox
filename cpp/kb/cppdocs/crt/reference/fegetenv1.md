# `fegetenv`

Stores the current floating-point environment in the specified object.

## Syntax

```C
int fegetenv(
   fenv_t *penv
);
```

### Parameters

*`penv`*\
Pointer to an `fenv_t` object to contain the current floating-point environment values.

## Return value

Returns 0 if the floating-point environment was successfully stored in *`penv`*. Otherwise, it returns a non-zero value.

## Remarks

The **`fegetenv`** function stores the current floating-point environment in the object pointed to by *`penv`*. The floating point environment is the set of status flags and control modes that affect floating-point calculations. This environment includes the rounding direction mode and the status flags for floating-point exceptions. If *`penv`* doesn't point to a valid `fenv_t` object, subsequent behavior is undefined.

To use this function, you must turn off floating-point optimizations that could prevent access by using the `#pragma fenv_access(on)` directive prior to the call. For more information, see [`fenv_access`](../../preprocessor/fenv-access.md).

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`fegetenv`** | \<fenv.h> | \<cfenv> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`fesetenv`](fesetenv1.md)