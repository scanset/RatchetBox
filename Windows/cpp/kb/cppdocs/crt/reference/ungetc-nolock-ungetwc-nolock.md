# `_ungetc_nolock`, `_ungetwc_nolock`

Pushes a character back onto the stream without locking.

## Syntax

```C
int _ungetc_nolock(
   int c,
   FILE *stream
);
wint_t _ungetwc_nolock(
   wint_t c,
   FILE *stream
);
```

### Parameters

*`c`*\
Character to be pushed.

*`stream`*\
Pointer to `FILE` structure.

## Return value

If successful, each of these functions returns the character argument *`c`*. If *`c`* can't be pushed back or if no character has been read, the input stream is unchanged and **`_ungetc_nolock`** returns `EOF`; **`_ungetwc_nolock`** returns `WEOF`. If *`stream`* is `NULL`, `EOF` or `WEOF` is returned, and `errno` is set to `EINVAL`.

For information on these and other error codes, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md).

## Remarks

These functions are non-locking versions of `ungetc` and `ungetwc`. The versions with the `_nolock` suffix are identical except that they aren't protected from interference by other threads. They may be faster since they don't incur the overhead of locking out other threads. Use these functions only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_ungettc_nolock` | **`_ungetc_nolock`** | **`_ungetc_nolock`** | **`_ungetwc_nolock`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_ungetc_nolock`** | \<stdio.h> |
| **`_ungetwc_nolock`** | \<stdio.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Stream I/O](../stream-i-o.md)\
[`getc`, `getwc`](getc-getwc.md)\
[`putc`, `putwc`](putc-putwc.md)