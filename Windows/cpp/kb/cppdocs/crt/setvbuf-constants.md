# `setvbuf` constants

## Syntax

```C
#include <stdio.h>
```

## Remarks

These constants represent the type of buffer for `setvbuf`.

The possible values are given by the following manifest constants:

| Constant | Meaning |
|---|---|
| `_IOFBF` | Full buffering: Buffer specified in call to `setvbuf` is used and its size is as specified in `setvbuf` call. If buffer pointer is `NULL`, automatically allocated buffer of specified size is used. |
| `_IOLBF` | Same as `_IOFBF`. |
| `_IONBF` | No buffer is used, regardless of arguments in call to `setvbuf`. |

## See also

[`setbuf`](./reference/setbuf.md)\
[Global constants](./global-constants.md)