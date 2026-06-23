# `CLOCKS_PER_SEC`, `CLK_TCK`

## Syntax

```C
#include <time.h>
```

## Remarks

The time in seconds is the value returned by the `clock` function, divided by `CLOCKS_PER_SEC`. `CLK_TCK` is equivalent, but considered obsolete.

## See also

[`clock`](./reference/clock.md)\
[Global constants](./global-constants.md)