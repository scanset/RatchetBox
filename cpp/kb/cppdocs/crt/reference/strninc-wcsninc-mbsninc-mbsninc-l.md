# `_strninc`, `_wcsninc`, `_mbsninc`, `_mbsninc_l`

Advances a string pointer by **n** characters.

> [!IMPORTANT]
> **`_mbsninc`** and **`_mbsninc_l`** cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
char *_strninc(
   const char *str,
   size_t count
);
wchar_t *_wcsninc(
   const wchar_t *str,
   size_t count
);
unsigned char *_mbsninc(
   const unsigned char *str,
   size_t count
);
unsigned char *_mbsninc(
   const unsigned char *str,
   size_t count,
   _locale_t locale
);
```

### Parameters

*`str`*\
Source string.

*`count`*\
Number of characters to increment a string pointer.

*`locale`*\
Locale to use.

## Return value

Each of these routines returns a pointer to *`str`* after *`str`* has been incremented by *`count`* characters or `NULL` if the supplied pointer is `NULL`. If *`count`* is greater than or equal to the number of characters in *`str`*, the result is undefined.

## Remarks

The **`_mbsninc`** function increments *`str`* by *`count`* multibyte characters. **`_mbsninc`** recognizes multibyte-character sequences according to the [multibyte code page](../code-pages.md) currently in use.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tcsninc` | **`_strninc`** | **`_mbsninc`** | **`_wcsninc`** |

**`_strninc`** and **`_wcsninc`** are single-byte-character string and wide-character string versions of **`_mbsninc`**. **`_wcsninc`** and **`_strninc`** are provided only for this mapping and shouldn't be used otherwise. For more information, see [Using generic-text mappings](../using-generic-text-mappings.md) and [Generic-text mappings](../generic-text-mappings.md).

**`_mbsninc_l`** is identical except that it uses the locale parameter passed in instead. For more information, see [Locale](../locale.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_mbsninc`** | \<mbstring.h> |
| **`_mbsninc_l`** | \<mbstring.h> |
| **`_strninc`** | \<tchar.h> |
| **`_wcsninc`** | \<tchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[String manipulation](../string-manipulation-crt.md)\
[Locale](../locale.md)\
[Interpretation of multibyte-character sequences](../interpretation-of-multibyte-character-sequences.md)\
[`_strdec`, `_wcsdec`, `_mbsdec`, `_mbsdec_l`](strdec-wcsdec-mbsdec-mbsdec-l.md)\
[`_strinc`, `_wcsinc`, `_mbsinc`, `_mbsinc_l`](strinc-wcsinc-mbsinc-mbsinc-l.md)\
[`_strnextc`, `_wcsnextc`, `_mbsnextc`, `_mbsnextc_l`](strnextc-wcsnextc-mbsnextc-mbsnextc-l.md)