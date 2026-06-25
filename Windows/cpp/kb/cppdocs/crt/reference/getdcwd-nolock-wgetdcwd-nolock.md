# `_getdcwd_nolock`, `_wgetdcwd_nolock`

Gets the full path of the current working directory on the specified drive.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
char *_getdcwd_nolock(
   int drive,
   char *buffer,
   int maxlen
);
wchar_t *_wgetdcwd_nolock(
   int drive,
   wchar_t *buffer,
   int maxlen
);
```

### Parameters

*`drive`*\
Disk drive.

*`buffer`*\
Storage location for the path.

*`maxlen`*\
Maximum length of path in characters: **`char`** for **`_getdcwd_nolock`** and **`wchar_t`** for **`_wgetdcwd_nolock`**.

## Return value

See [`_getdcwd`, `_wgetdcwd`](getdcwd-wgetdcwd.md).

## Remarks

**`_getdcwd_nolock`** and **`_wgetdcwd_nolock`** are identical to `_getdcwd` and `_wgetdcwd`, respectively, except that they aren't protected from interference by other threads. They might be faster because they don't incur the overhead of locking out other threads. Use these functions only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| **`_tgetdcwd_nolock`** | **`_getdcwd_nolock`** | **`_getdcwd_nolock`** | **`_wgetdcwd_nolock`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_getdcwd_nolock`** | \<direct.h> |
| **`_wgetdcwd_nolock`** | \<direct.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Directory control](../directory-control.md)\
[`_chdir`, `_wchdir`](chdir-wchdir.md)\
[`_getcwd`, `_wgetcwd`](getcwd-wgetcwd.md)\
[`_getdrive`](getdrive.md)\
[`_mkdir`, `_wmkdir`](mkdir-wmkdir.md)\
[`_rmdir`, `_wrmdir`](rmdir-wrmdir.md)