# `feclearexcept`

**`feclearexcept`** attempts to clear the floating-point exception flags specified by the argument.

## Syntax

```C
int feclearexcept(
   int excepts
);
```

### Parameters

*`excepts`*\
The exception status flags to clear.

## Return value

Returns zero if *`excepts`* is zero, or if all the specified exceptions were successfully cleared. Otherwise, it returns a nonzero value.

## Remarks

The **`feclearexcept`** function attempts to clear the floating point exception status flags specified by *`excepts`*. The function supports these exception macros, defined in fenv.h:

| Exception macro | Description |
|---|---|
| `FE_DIVBYZERO` | A singularity or pole error occurred in an earlier floating-point operation; an infinity value was created. |
| `FE_INEXACT` | The function was forced to round the stored result of an earlier floating-point operation. |
| `FE_INVALID` | A domain error occurred in an earlier floating-point operation. |
| `FE_OVERFLOW` | A range error occurred; an earlier floating-point operation result was too large to be represented. |
| `FE_UNDERFLOW` | An earlier floating-point operation result was too small to be represented at full precision; a denormal value was created. |
| `FE_ALL_EXCEPT` | The bitwise OR of all supported floating-point exceptions. |

The *`excepts`* argument may be zero, or the bitwise OR of one or more of the supported exception macros. The result of any other argument value is undefined.

## Requirements

| Function | C header | C++ header |
|---|---|---|
| **`feclearexcept`** | \<fenv.h> | \<cfenv> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Alphabetical function reference](crt-alphabetical-function-reference.md)\
[`fetestexcept`](fetestexcept1.md)