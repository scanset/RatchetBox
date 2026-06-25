# `_fread_nolock_s`

Reads data from a stream without locking. This version of [`fread_nolock`](fread-nolock.md) has security enhancements, as described in [Security features in the CRT](../security-features-in-the-crt.md).

## Syntax

```C
size_t _fread_nolock_s(
   void *buffer,
   size_t bufferSize,
   size_t elementSize,
   size_t elementCount,
   FILE *stream
);
```

### Parameters

*`buffer`*\
Storage location for data.

*`bufferSize`*\
Size of the destination buffer in bytes.

*`elementSize`*\
Size of the item to read in bytes.

*`elementCount`*\
Maximum number of items to be read.

*`stream`*\
Pointer to `FILE` structure.

## Return value

See [`fread_s`](fread-s.md).

## Remarks

This function is a non-locking version of `fread_s`. It's identical to `fread_s` except that it isn't protected from interference by other threads. It might be faster because it doesn't incur the overhead of locking out other threads. Use this function only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required header |
|---|---|
| **`_fread_nolock_s`** | C: \<stdio.h>; C++: \<cstdio> or \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Stream I/O](../stream-i-o.md)\
[`fwrite`](fwrite.md)\
[`_read`](read.md)