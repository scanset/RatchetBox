# `_strncoll`, `_wcsncoll`, `_mbsncoll`, `_strncoll_l`, `_wcsncoll_l`, `_mbsncoll_l`

Compares strings by using locale-specific information.

> [!IMPORTANT]
> **`_mbsncoll`** and **`_mbsncoll_l`** cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int _strncoll(
   const char *string1,
   const char *string2,
   size_t count
);
int _wcsncoll(
   const wchar_t *string1,
   const wchar_t *string2,
   size_t count
);
int _mbsncoll(
   const unsigned char *string1,
   const unsigned char *string2,
   size_t count
);
int _strncoll_l(
   const char *string1,
   const char *string2,
   size_t count,
   _locale_t locale
);
int _wcsncoll_l(
   const wchar_t *string1,
   const wchar_t *string2,
   size_t count,
   _locale_t locale
);
int _mbsncoll_l(
   const unsigned char *string1,
   const unsigned char *string2,
   size_t count,
   _locale_t locale
);
```

### Parameters

*`string1`*, *`string2`*\
Null-terminated strings to compare.

*`count`*\
The number of characters to compare.

*`locale`*\
The locale to use.

## Return value

Each of these functions returns a value that indicates the relationship of the substrings of *`string1`* and *`string2`*, as follows.

| Return value | Relationship of *`string1`* to *`string2`* |
|---|---|
| < 0 | *`string1`* is less than *`string2`*. |
| 0 | *`string1`* is identical to *`string2`*. |
| > 0 | *`string1`* is greater than *`string2`*. |

Each of these functions returns `_NLSCMPERROR`. To use `_NLSCMPERROR`, include either STRING.h or MBSTRING.h. **`_wcsncoll`** can fail if either *`string1`* or *`string2`* contains wide-character codes that are outside the domain of the collating sequence. When an error occurs, **`_wcsncoll`** may set `errno` to `EINVAL`. To check for an error on a call to **`_wcsncoll`**, set `errno` to 0, and then check `errno` after the **`_wcsncoll`** call.

## Remarks

Each of these functions performs a case-sensitive comparison of the first *`count`* characters in *`string1`* and *`string2`*, according to the code page that's currently in use. Use these functions only when there's a difference between the character set order and the lexicographic character order in the code page, and when this difference matters for the string comparison. The character set order is locale-dependent. The versions of these functions that don't have the `_l` suffix use the current locale, but the versions that have the `_l` suffix use the locale that's passed in. For more information, see [Locale](../locale.md).

All of these functions validate their parameters. If either *`string1`* or *`string2`* is a null pointer, or *`count`* is greater than `INT_MAX`, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, these functions return `_NLSCMPERROR` and set `errno` to `EINVAL`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tcsnccoll` | **`_strncoll`** | **`_mbsncoll`** | **`_wcsncoll`** |
| `_tcsncoll` | **`_strncoll`** | [`_mbsnbcoll`](mbsnbcoll-mbsnbcoll-l-mbsnbicoll-mbsnbicoll-l.md) | **`_wcsncoll`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_strncoll`**, **`_strncoll_l`** | \<string.h> |
| **`_wcsncoll`**, **`_wcsncoll_l`** | \<wchar.h> or \<string.h> |
| **`_mbsncoll`**, **`_mbsncoll_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Locale](../locale.md)\
[String manipulation](../string-manipulation-crt.md)\
[`strcoll` functions](../strcoll-functions.md)\
[`localeconv`](localeconv.md)\
[`_mbsnbcoll`, `_mbsnbcoll_l`, `_mbsnbicoll`, `_mbsnbicoll_l`](mbsnbcoll-mbsnbcoll-l-mbsnbicoll-mbsnbicoll-l.md)\
[`setlocale`, `_wsetlocale`](setlocale-wsetlocale.md)\
[`strcmp`, `wcscmp`, `_mbscmp`](strcmp-wcscmp-mbscmp.md)\
[`_stricmp`, `_wcsicmp`, `_mbsicmp`, `_stricmp_l`, `_wcsicmp_l`, `_mbsicmp_l`](stricmp-wcsicmp-mbsicmp-stricmp-l-wcsicmp-l-mbsicmp-l.md)\
[`strncmp`, `wcsncmp`, `_mbsncmp`, `_mbsncmp_l`](strncmp-wcsncmp-mbsncmp-mbsncmp-l.md)\
[`_strnicmp`, `_wcsnicmp`, `_mbsnicmp`, `_strnicmp_l`, `_wcsnicmp_l`, `_mbsnicmp_l`](strnicmp-wcsnicmp-mbsnicmp-strnicmp-l-wcsnicmp-l-mbsnicmp-l.md)\
[`strxfrm`, `wcsxfrm`, `_strxfrm_l`, `_wcsxfrm_l`](strxfrm-wcsxfrm-strxfrm-l-wcsxfrm-l.md)