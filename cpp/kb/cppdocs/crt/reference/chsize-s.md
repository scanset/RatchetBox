# `_chsize_s`

Changes the size of a file. This function is a version of [`_chsize`](chsize.md) with security enhancements as described in [Security features in the CRT](../security-features-in-the-crt.md).

## Syntax

```C
errno_t _chsize_s(
   int fd,
   __int64 size
);
```

### Parameters

*`fd`*\
File descriptor referring to an open file.

*`size`*\
New length of the file in bytes.

## Return value

**`_chsize_s`** returns the value 0 if the file size is successfully changed. A nonzero return value indicates an error: the return value is `EACCES` if the specified file is locked against access, `EBADF` if the specified file is read-only or the descriptor is invalid, `ENOSPC` if no space is left on the device, or `EINVAL` if size is less than zero. `errno` is set to the same value.

For more information about these and other return codes, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md).

## Remarks

The **`_chsize_s`** function extends or truncates the file associated with *`fd`* to the length specified by *`size`*. The file must be open in a mode that permits writing. Null characters ('\0') are appended if the file is extended. If the file is truncated, all data from the end of the shortened file to the original length of the file is lost.

**`_chsize_s`** takes a 64-bit integer as the file size, and therefore can handle file sizes greater than 4 GB. `_chsize` is limited to 32-bit file sizes.

This function validates its parameters. If *`fd`* isn't a valid file descriptor or size is less than zero, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_chsize_s`** | \<io.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[File handling](../file-handling.md)\
[`_chsize`](chsize.md)\
[`_close`](close.md)\
[`_creat`, `_wcreat`](creat-wcreat.md)\
[`_open`, `_wopen`](open-wopen.md)