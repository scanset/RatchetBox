# `_heapadd`

Adds memory to the heap.

> [!IMPORTANT]
> This function is obsolete. Beginning in Visual Studio 2015, it is not available in the CRT.

## Syntax

```C
int _heapadd(
   void *memblock,
   size_t size
);
```

### Parameters

*`memblock`*\
Pointer to the heap memory.

*`size`*\
Size of memory to add, in bytes.

## Return value

If successful, **`_heapadd`** returns 0; otherwise, the function returns -1 and sets `errno` to `ENOSYS`.

For more information about this and other return codes, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](./errno-doserrno-sys-errlist-and-sys-nerr.md).

## Remarks

Beginning with Visual C++ version 4.0, the underlying heap structure was moved to the C run-time libraries to support the new debugging features. As a result, **`_heapadd`** is no longer supported on any platform that is based on the Win32 API.

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_heapadd`** | \<malloc.h> | \<errno.h> |

For more compatibility information, see [Compatibility](./compatibility.md) in the Introduction.

## See also

[Memory allocation](./memory-allocation.md)\
[`free`](./reference/free.md)\
[`_heapchk`](./reference/heapchk.md)\
[`_heapmin`](./reference/heapmin.md)\
[`_heapset`](./heapset.md)\
[`_heapwalk`](./reference/heapwalk.md)\
[`malloc`](./reference/malloc.md)\
[`realloc`](./reference/realloc.md)