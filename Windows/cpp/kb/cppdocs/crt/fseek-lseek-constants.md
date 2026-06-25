# `fseek`, `_lseek` constants

## Syntax

```C
#include <stdio.h>
```

## Remarks

The *`origin`* argument specifies the initial position and can be one of the following manifest constants:

| Constant | Meaning |
|---|---|
| `SEEK_END` | End of file |
| `SEEK_CUR` | Current position of file pointer |
| `SEEK_SET` | Beginning of file |

## See also

[`fseek`, `_fseeki64`](./reference/fseek-fseeki64.md)\
[`_lseek`, `_lseeki64`](./reference/lseek-lseeki64.md)\
[Global constants](./global-constants.md)