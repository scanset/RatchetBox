# `_commit`

Flushes a file directly to disk.

## Syntax

```C
int _commit(
   int fd
);
```

### Parameters

*`fd`*\
File descriptor referring to the open file.

## Return value

**`_commit`** returns 0 if the file was successfully flushed to disk. A return value of -1 indicates an error.

## Remarks

The **`_commit`** function forces the operating system to write the file associated with *`fd`* to disk. This call ensures that the specified file is flushed immediately, not at the operating system's discretion.

If *`fd`* is an invalid file descriptor, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, the function returns -1 and `errno` is set to `EBADF`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header | Optional headers |
|---|---|---|
| **`_commit`** | \<io.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Low-level I/O](../low-level-i-o.md)\
[`_creat`, `_wcreat`](creat-wcreat.md)\
[`_open`, `_wopen`](open-wopen.md)\
[`_read`](read.md)\
[`_write`](write.md)