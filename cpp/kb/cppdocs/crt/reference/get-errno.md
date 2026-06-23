# `_get_errno`

Gets the current value of the errno global variable.

## Syntax

```C
errno_t _get_errno(
   int * pValue
);
```

### Parameters

*`pValue`*\
A pointer to an integer to be filled with the current value of the `errno` variable.

## Return value

Returns zero if successful; an error code on failure. If *`pValue`* is `NULL`, the invalid parameter handler is invoked as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, this function sets `errno` to `EINVAL` and returns `EINVAL`.

## Remarks

Possible values of `errno` are defined in Errno.h. Also, see [`errno` constants](../errno-constants.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Example

```C
// crt_get_errno.c
#include <errno.h>
#include <fcntl.h>
#include <io.h>
#include <stdio.h>
#include <sys/stat.h>

int main()
{
   errno_t err;
   int pfh;
   _sopen_s(&pfh, "nonexistent.file", _O_WRONLY, _SH_DENYNO, _S_IWRITE);
   _get_errno(&err);
   printf("errno = %d\n", err);
   printf("fyi, ENOENT = %d\n", ENOENT);
}
```

```Output
errno = 2
fyi, ENOENT = 2
```

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_get_errno`** | \<stdlib.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`_set_errno`](set-errno.md)\
[`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md)