# `_heapmin`

Releases unused heap memory to the operating system.

## Syntax

```C
int _heapmin( void );
```

## Return value

If successful, **`_heapmin`** returns 0; otherwise, the function returns -1 and sets `errno` to `ENOSYS`.

For more information about this and other return codes, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md).

## Remarks

The **`_heapmin`** function minimizes the heap by releasing unused heap memory to the operating system. If the operating system doesn't support **`_heapmin`** (for example, Windows 98), the function returns -1 and sets `errno` to `ENOSYS`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_heapmin`** | \<malloc.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Memory allocation](../memory-allocation.md)\
[`free`](free.md)\
[`_heapadd`](../heapadd.md)\
[`_heapchk`](heapchk.md)\
[`_heapset`](../heapset.md)\
[`_heapwalk`](heapwalk.md)\
[`malloc`](malloc.md)