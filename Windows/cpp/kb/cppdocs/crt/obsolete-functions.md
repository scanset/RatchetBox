# Obsolete functions

Certain library functions are obsolete and have more recent equivalents. We recommend you change these functions to the updated versions. Other obsolete functions have been removed from the CRT. This article lists the functions deprecated as obsolete, and the functions removed in a particular version of Visual Studio.

## Deprecated as obsolete in Visual Studio 2015

| Obsolete function | Alternative |
|---|---|
| `is_wctype` | [`iswctype`](./reference/isctype-iswctype-isctype-l-iswctype-l.md) |
| `_loaddll` | [`LoadLibrary`](/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryw), [`LoadLibraryEx`](/windows/win32/api/libloaderapi/nf-libloaderapi-loadlibraryexw), or [`LoadPackagedLibrary`](/windows/win32/api/winbase/nf-winbase-loadpackagedlibrary) |
| `_unloaddll` | [`FreeLibrary`](/windows/win32/api/libloaderapi/nf-libloaderapi-freelibrary) |
| `_getdllprocaddr` | [`GetProcAddress`](../build/getprocaddress.md) |
| `_seterrormode` | [`SetErrorMode`](/windows/win32/api/errhandlingapi/nf-errhandlingapi-seterrormode) |
| `_beep` | [`Beep`](/windows/win32/api/utilapiset/nf-utilapiset-beep) |
| `_sleep` | [`Sleep`](/windows/win32/api/synchapi/nf-synchapi-sleep) |
| `_getsystime` | [`GetLocalTime`](/windows/win32/api/sysinfoapi/nf-sysinfoapi-getlocaltime) |
| `_setsystime` | [`SetLocalTime`](/windows/win32/api/sysinfoapi/nf-sysinfoapi-setlocaltime) |

## Removed from the CRT in Visual Studio 2015

| Obsolete function | Alternative |
|---|---|
| [`_cgets`, `_cgetws`](./cgets-cgetws.md) | [`_cgets_s`, `_cgetws_s`](./reference/cgets-s-cgetws-s.md) |
| [`gets`, `_getws`](./gets-getws.md) | [`gets_s`, `_getws_s`](./reference/gets-s-getws-s.md) |
| [`_get_output_format`](./get-output-format.md) | None |
| [`_heapadd`](./heapadd.md) | None |
| [`_heapset`](./heapset.md) | None |
| [`inp`, `inpw`, `_inp`, `_inpw`, `_inpd`](./inp-inpw-inpd.md) | None |
| [`outp`, `outpw`, `_outp`, `_outpw`, `_outpd`](./outp-outpw-outpd.md) | None |
| [`_set_output_format`](./set-output-format.md) | None |

## Removed from the CRT in earlier versions of Visual Studio

[`_lock`](./lock.md)\
[`_unlock`](./unlock.md)