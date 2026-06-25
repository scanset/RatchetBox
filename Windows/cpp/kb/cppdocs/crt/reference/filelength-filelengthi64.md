# `_filelength`, `_filelengthi64`

Gets the length of a file.

## Syntax

```C
long _filelength(
   int fd
);
__int64 _filelengthi64(
   int fd
);
```

### Parameters

*`fd`*\
Target the file descriptor.

## Return value

Both **`_filelength`** and **`_filelengthi64`** return the file length, in bytes, of the target file associated with *`fd`*. If *`fd`* is an invalid file descriptor, this function invokes the invalid parameter handler, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, both functions return -1L to indicate an error and set `errno` to `EBADF`.

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required header |
|---|---|
| **`_filelength`** | \<io.h> |
| **`_filelengthi64`** | \<io.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See the example for [`_chsize`](chsize.md).

## See also

[File handling](../file-handling.md)\
[`_chsize`](chsize.md)\
[`_fileno`](fileno.md)\
[`_fstat`, `_fstat32`, `_fstat64`, `_fstati64`, `_fstat32i64`, `_fstat64i32`](fstat-fstat32-fstat64-fstati64-fstat32i64-fstat64i32.md)\
[`_stat`, `_wstat` functions](stat-functions.md)