# `HUGE_VAL`, `_HUGE`

## Syntax

```C
#include <math.h>
```

## Remarks

`HUGE_VAL` is the largest representable double value. This value is returned by many run-time math functions when an error occurs. For some functions, `-HUGE_VAL` is returned. `HUGE_VAL` is defined as the result of a floating-point product that is guaranteed to overflow. `HUGE_VALF` and `HUGE_VALL` are the largest representable `float` and `long double` typed values, respectively. The internal value `_HUGE` and the synonymous `HUGE` are defined similarly, but run-time math functions return `HUGE_VAL`. You should also use `HUGE_VAL` in your code for consistency.

## See also

[Global constants](./global-constants.md)