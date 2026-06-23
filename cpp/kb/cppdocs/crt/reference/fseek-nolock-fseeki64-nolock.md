# `_fseek_nolock`, `_fseeki64_nolock`

Moves the file pointer to a specified location without locking.

## Syntax

```C
int _fseek_nolock(
   FILE *stream,
   long offset,
   int origin
);
int _fseeki64_nolock(
   FILE *stream,
   __int64 offset,
   int origin
);
```

### Parameters

*`stream`*\
Pointer to the `FILE` structure.

*`offset`*\
Number of bytes from *`origin`*.

*`origin`*\
Initial position.

## Return value

Same as [`fseek`](fseek-fseeki64.md) and [`_fseeki64`](fseek-fseeki64.md), respectively.

## Remarks

These functions are the non-locking versions of [`fseek`](fseek-fseeki64.md) and [`_fseeki64`](fseek-fseeki64.md), respectively. These functions are identical to [`fseek`](fseek-fseeki64.md) and [`_fseeki64`](fseek-fseeki64.md), except that they aren't protected from interference by other threads. These functions might be faster because they don't incur the overhead of locking out other threads. Use these functions only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required header |
|---|---|
| **`_fseek_nolock`**, **`_fseeki64_nolock`** | \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Stream I/O](../stream-i-o.md)\
[`ftell`, `_ftelli64`](ftell-ftelli64.md)\
[`_lseek`, `_lseeki64`](lseek-lseeki64.md)\
[`rewind`](rewind.md)