# `_chdrive`

Changes the current working drive.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int _chdrive(
   int drive
);
```

### Parameters

*`drive`*\
An integer from 1 through 26 that specifies the current working drive (1=A, 2=B, and so forth).

## Return value

Zero (0) if the current working drive was changed successfully; otherwise, -1.

## Remarks

If *`drive`* isn't in the range from 1 through 26, the invalid-parameter handler is invoked as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, the **`_chdrive`** function returns -1, `errno` is set to `EACCES`, and `_doserrno` is set to `ERROR_INVALID_DRIVE`.

The **`_chdrive`** function isn't thread-safe because it depends on the `SetCurrentDirectory` function, which is itself not thread-safe. To use **`_chdrive`** safely in a multi-threaded application, you must provide your own thread synchronization. For more information, see [`SetCurrentDirectory`](/windows/win32/api/winbase/nf-winbase-setcurrentdirectory).

The **`_chdrive`** function changes only the current working drive;  `_chdir` changes the current working directory.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_chdrive`** | \<direct.h> |

For more information, see [Compatibility](../compatibility.md).

## Example

See the example for [`_getdrive`](getdrive.md).

## See also

[Directory control](../directory-control.md)\
[`_chdir`, `_wchdir`](chdir-wchdir.md)\
[`_fullpath`, `_wfullpath`](fullpath-wfullpath.md)\
[`_getcwd`, `_wgetcwd`](getcwd-wgetcwd.md)\
[`_getdrive`](getdrive.md)\
[`_mkdir`, `_wmkdir`](mkdir-wmkdir.md)\
[`_rmdir`, `_wrmdir`](rmdir-wrmdir.md)\
[`system`, `_wsystem`](system-wsystem.md)