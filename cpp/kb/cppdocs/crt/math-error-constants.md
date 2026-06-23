# Math error constants

## Syntax

```C
#include <math.h>
```

## Remarks

The math routines of the run-time library can generate math error constants.

These errors, described as follows, correspond to the exception types defined in MATH.H and are returned by the `_matherr` function when a math error occurs.

| Constant | Meaning |
|---|---|
| `_DOMAIN` | Argument to function is outside domain of function. |
| `_OVERFLOW` | Result is too large to be represented in function's return type. |
| `_PLOSS` | Partial loss of significance occurred. |
| `_SING` | Argument singularity: argument to function has illegal value. (For example, value 0 is passed to function that requires nonzero value.) |
| `_TLOSS` | Total loss of significance occurred. |
| `_UNDERFLOW` | Result is too small to be represented. |

## See also

[`_matherr`](./reference/matherr.md)\
[Global constants](./global-constants.md)