# `_stat` structure `st_mode` field constants

## Syntax

```C
#include <sys/stat.h>
```

## Remarks

These constants are used to indicate file type in the `st_mode` field of the [`_stat` structure](./standard-types.md).

The bit mask constants are described below:

| Constant | Meaning |
|---|---|
| `_S_IFMT` | File type mask |
| `_S_IFDIR` | Directory |
| `_S_IFCHR` | Character special (indicates a device if set) |
| `_S_IFREG` | Regular |
| `_S_IREAD` | Read permission, owner |
| `_S_IWRITE` | Write permission, owner |
| `_S_IEXEC` | Execute/search permission, owner |

## See also

[`_stat`, `_wstat` functions](./reference/stat-functions.md)\
[`_fstat`, `_fstat32`, `_fstat64`, `_fstati64`, `_fstat32i64`, `_fstat64i32`](./reference/fstat-fstat32-fstat64-fstati64-fstat32i64-fstat64i32.md)\
[Standard types](./standard-types.md)\
[Global constants](./global-constants.md)