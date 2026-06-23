# `_fread_nolock`

Reads data from a stream without locking.

## Syntax

```C
size_t _fread_nolock(
   void *buffer,
   size_t size,
   size_t count,
   FILE *stream
);
```

### Parameters

*`buffer`*\
Storage location for data.

*`size`*\
Item size in bytes.

*`count`*\
Maximum number of items to be read.

*`stream`*\
Pointer to the `FILE` structure.

## Return value

See [`fread`](fread.md).

## Remarks

This function is a non-locking version of `fread`. It's identical to `fread` except that it isn't protected from interference by other threads. It might be faster because it doesn't incur the overhead of locking out other threads. Use this function only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required header |
|---|---|
| **`_fread_nolock`** | \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Stream I/O](../stream-i-o.md)\
[`fwrite`](fwrite.md)\
[`_read`](read.md)