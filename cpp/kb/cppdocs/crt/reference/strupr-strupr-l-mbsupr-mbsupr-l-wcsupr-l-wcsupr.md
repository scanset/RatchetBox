# `_strupr`, `_strupr_l`, `_mbsupr`, `_mbsupr_l`, `_wcsupr_l`, `_wcsupr`

Converts a string to uppercase. More secure versions of these functions are available; see [`_strupr_s`, `_strupr_s_l`, `_mbsupr_s`, `_mbsupr_s_l`, `_wcsupr_s`, `_wcsupr_s_l`](strupr-s-strupr-s-l-mbsupr-s-mbsupr-s-l-wcsupr-s-wcsupr-s-l.md).

> [!IMPORTANT]
> **`_mbsupr`** and **`_mbsupr_l`** cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
char *_strupr(
   char *str
);
wchar_t *_wcsupr(
   wchar_t *str
);
unsigned char *_mbsupr(
   unsigned char *str
);
char *_strupr_l(
   char *str,
   _locale_t locale
);
wchar_t *_wcsupr_l(
   wchar_t *str,
   _locale_t locale
);
unsigned char *_mbsupr_l(
   unsigned char *str,
   _locale_t locale
);
template <size_t size>
char *_strupr(
   char (&str)[size]
); // C++ only
template <size_t size>
wchar_t *_wcsupr(
   wchar_t (&str)[size]
); // C++ only
template <size_t size>
unsigned char *_mbsupr(
   unsigned char (&str)[size]
); // C++ only
template <size_t size>
char *_strupr_l(
   char (&str)[size],
   _locale_t locale
); // C++ only
template <size_t size>
wchar_t *_wcsupr_l(
   wchar_t (&str)[size],
   _locale_t locale
); // C++ only
template <size_t size>
unsigned char *_mbsupr_l(
   unsigned char (&str)[size],
   _locale_t locale
); // C++ only
```

### Parameters

*`str`*\
String to capitalize.

*`locale`*\
The locale to use.

## Return value

Returns a pointer to the altered string. Because the modification is done in place, the pointer returned is the same as the pointer passed as the input argument. No return value is reserved to indicate an error.

## Remarks

The **`_strupr`** function converts, in place, each lowercase letter in *`str`* to uppercase. The conversion is determined by the `LC_CTYPE` category setting of the locale. Other characters aren't affected. For more information on `LC_CTYPE`, see [`setlocale`](setlocale-wsetlocale.md). The versions of these functions without the `_l` suffix use the current locale; the versions with the `_l` suffix are identical except that they use the locale passed in instead. For more information, see [Locale](../locale.md).

**`_wcsupr`** and **`_mbsupr`** are wide-character and multibyte-character versions of **`_strupr`**. The argument and return value of **`_wcsupr`** are wide-character strings. The argument and return value of **`_mbsupr`** are multibyte-character strings. These three functions behave identically otherwise.

If *`str`* is a null pointer, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md) . If execution is allowed to continue, these functions return the original string and set `errno` to `EINVAL`.

In C++, these functions have template overloads that invoke the newer, secure counterparts of these functions. For more information, see [Secure template overloads](../secure-template-overloads.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tcsupr` | **`_strupr`** | **`_mbsupr`** | **`_wcsupr`** |
| `_tcsupr_l` | **`_strupr_l`** | **`_mbsupr_l`** | **`_wcsupr_l`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_strupr`**, **`_strupr_l`** | \<string.h> |
| **`_wcsupr`**, **`_wcsupr_l`** | \<string.h> or \<wchar.h> |
| **`_mbsupr`**, **`_mbsupr_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See the example for [`_strlwr`](strlwr-wcslwr-mbslwr-strlwr-l-wcslwr-l-mbslwr-l.md).

## See also

[Locale](../locale.md)\
[String manipulation](../string-manipulation-crt.md)\
[`_strlwr`, `_wcslwr`, `_mbslwr`, `_strlwr_l`, `_wcslwr_l`, `_mbslwr_l`](strlwr-wcslwr-mbslwr-strlwr-l-wcslwr-l-mbslwr-l.md)