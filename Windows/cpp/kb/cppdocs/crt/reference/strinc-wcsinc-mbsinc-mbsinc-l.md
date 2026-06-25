# `_strinc`, `_wcsinc`, `_mbsinc`, `_mbsinc_l`

Advances a string pointer by one character.

> [!IMPORTANT]
> **`_mbsinc`** and **`_mbsinc_l`** cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
char *_strinc(
   const char *current,
   _locale_t locale
);
wchar_t *_wcsinc(
   const wchar_t *current,
   _locale_t locale
);
unsigned char *_mbsinc(
   const unsigned char *current
);
unsigned char *_mbsinc_l(
   const unsigned char *current,
   _locale_t locale
);
```

### Parameters

*`current`*\
Character pointer.

*`locale`*\
Locale to use.

## Return value

Each of these routines returns a pointer to the character that immediately follows *`current`*.

## Remarks

The **`_mbsinc`** function returns a pointer to the first byte of the multibyte character that immediately follows *`current`*. **`_mbsinc`** recognizes multibyte-character sequences according to the [multibyte code page](../code-pages.md) that's currently in use; **`_mbsinc_l`** is identical except that it instead uses the locale parameter that's passed in. For more information, see [Locale](../locale.md).

The generic-text function `_tcsinc`, defined in Tchar.h, maps to **`_mbsinc`** if `_MBCS` has been defined, or to **`_wcsinc`** if `_UNICODE` has been defined. Otherwise, `_tcsinc` maps to **`_strinc`**. **`_strinc`** and **`_wcsinc`** are single-byte-character and wide-character versions of **`_mbsinc`**. **`_strinc`** and **`_wcsinc`** are provided only for this mapping and shouldn't be used otherwise. For more information, see [Using generic-text mappings](../using-generic-text-mappings.md) and [Generic-text mappings](../generic-text-mappings.md).

If *`current`* is `NULL`, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, this function returns `EINVAL` and sets `errno` to `EINVAL`.

> [!IMPORTANT]
> These functions might be vulnerable to buffer overrun threats. Buffer overruns can be used for system attacks because they can cause an unwarranted elevation of privilege. For more information, see [Avoiding buffer overruns](/windows/win32/SecBP/avoiding-buffer-overruns).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_mbsinc`** | \<mbstring.h> |
| **`_mbsinc_l`** | \<mbstring.h> |
| **`_strinc`** | \<tchar.h> |
| **`_wcsinc`** | \<tchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[String manipulation](../string-manipulation-crt.md)\
[`_strdec`, `_wcsdec`, `_mbsdec`, `_mbsdec_l`](strdec-wcsdec-mbsdec-mbsdec-l.md)\
[`_strnextc`, `_wcsnextc`, `_mbsnextc`, `_mbsnextc_l`](strnextc-wcsnextc-mbsnextc-mbsnextc-l.md)\
[`_strninc`, `_wcsninc`, `_mbsninc`, `_mbsninc_l`](strninc-wcsninc-mbsninc-mbsninc-l.md)