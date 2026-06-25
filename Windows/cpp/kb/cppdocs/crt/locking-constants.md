# `_locking` constants

## Syntax

```C
#include <sys/locking.h>
```

## Remarks

The *`mode`* argument in the call to the `_locking` function specifies the locking action to be performed.

The *`mode`* argument must be one of the following manifest constants.

| Value | Description |
|---|---|
| `_LK_LOCK` | Locks the specified bytes. If the bytes can't be locked, the function tries again after 1 second. If the bytes can't be locked after 10 attempts, the function returns an error. |
| `_LK_RLCK` | Same as `_LK_LOCK`. |
| `_LK_NBLCK` | Locks the specified bytes. If bytes can't be locked, the function returns an error. |
| `_LK_NBRLCK` | Same as `_LK_NBLCK`. |
| `_LK_UNLCK` | Unlocks the specified bytes. (The bytes must have been previously locked.) |

## See also

[`_locking`](./reference/locking.md)\
[Global constants](./global-constants.md)