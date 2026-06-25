# `_close`

Closes a file.

## Syntax

```C
int _close(
   int fd
);
```

### Parameters

*`fd`*\
File descriptor referring to the open file.

## Return value

**`_close`** returns 0 if the file was successfully closed. A return value of -1 indicates an error.

## Remarks

The **`_close`** function closes the file associated with *`fd`*.

The file descriptor and the underlying OS file handle are closed. Thus, it isn't necessary to call `CloseHandle` if the file was originally opened using the Win32 function `CreateFile` and converted to a file descriptor using `_open_osfhandle`.

This function validates its parameters. If *`fd`* is a bad file descriptor, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, the functions returns -1 and `errno` is set to `EBADF`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_close`** | \<io.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See the example for [`_open`](open-wopen.md).

## See also

[Low-level I/O](../low-level-i-o.md)\
[`_chsize`](chsize.md)\
[`_creat`, `_wcreat`](creat-wcreat.md)\
[`_dup`, `_dup2`](dup-dup2.md)\
[`_open`, `_wopen`](open-wopen.md)\
[`_unlink`, `_wunlink`](unlink-wunlink.md)