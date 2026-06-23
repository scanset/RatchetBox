# `_fclose_nolock`

Closes a stream without locking.

## Syntax

```C
int _fclose_nolock(
   FILE *stream
);
```

### Parameters

*`stream`*\
Pointer to the `FILE` structure.

## Return value

**`_fclose_nolock`** returns 0 if the stream is successfully closed. Returns `EOF` to indicate an error.

## Remarks

This function is a non-locking version of `fclose`. It's identical except that it isn't protected from interference by other threads. It might be faster because it doesn't incur the overhead of locking out other threads. Use this function only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required header |
|---|---|
| **`_fclose_nolock`** | \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Stream I/O](../stream-i-o.md)\
[`_close`](close.md)\
[`_fdopen`, `_wfdopen`](fdopen-wfdopen.md)\
[`fflush`](fflush.md)\
[`fopen`, `_wfopen`](fopen-wfopen.md)\
[`freopen`, `_wfreopen`](freopen-wfreopen.md)