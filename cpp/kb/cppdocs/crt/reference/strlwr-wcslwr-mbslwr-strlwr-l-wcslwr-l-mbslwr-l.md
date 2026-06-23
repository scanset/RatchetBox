# `_strlwr`, `_wcslwr`, `_mbslwr`, `_strlwr_l`, `_wcslwr_l`, `_mbslwr_l`

Converts a string to lowercase. More secure versions of these functions are available; see [`_strlwr_s`, `_strlwr_s_l`, `_mbslwr_s`, `_mbslwr_s_l`, `_wcslwr_s`, `_wcslwr_s_l`](strlwr-s-strlwr-s-l-mbslwr-s-mbslwr-s-l-wcslwr-s-wcslwr-s-l.md).

> [!IMPORTANT]
> **`_mbslwr`** and **`_mbslwr_l`** cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
char *_strlwr(
   char * str
);
wchar_t *_wcslwr(
   wchar_t * str
);
unsigned char *_mbslwr(
   unsigned char * str
);
char *_strlwr_l(
   char * str,
   _locale_t locale
);
wchar_t *_wcslwr_l(
   wchar_t * str,
   _locale_t locale
);
unsigned char *_mbslwr_l(
   unsigned char * str,
   _locale_t locale
);
template <size_t size>
char *_strlwr(
   char (&str)[size]
); // C++ only
template <size_t size>
wchar_t *_wcslwr(
   wchar_t (&str)[size]
); // C++ only
template <size_t size>
unsigned char *_mbslwr(
   unsigned char (&str)[size]
); // C++ only
template <size_t size>
char *_strlwr_l(
   char (&str)[size],
   _locale_t locale
); // C++ only
template <size_t size>
wchar_t *_wcslwr_l(
   wchar_t (&str)[size],
   _locale_t locale
); // C++ only
template <size_t size>
unsigned char *_mbslwr_l(
   unsigned char (&str)[size],
   _locale_t locale
); // C++ only
```

### Parameters

*`str`*\
Null-terminated string to convert to lowercase.

*`locale`*\
The locale to use.

## Return value

Each of these functions returns a pointer to the converted string. Because the modification is done in place, the pointer returned is the same as the pointer passed as the input argument. No return value is reserved to indicate an error.

## Remarks

The **`_strlwr`** function converts any uppercase letters in *`str`* to lowercase as determined by the `LC_CTYPE` category setting of the locale. Other characters aren't affected. For more information on `LC_CTYPE`, see [`setlocale`](setlocale-wsetlocale.md). The versions of these functions without the `_l` suffix use the current locale for their locale-dependent behavior; the versions with the `_l` suffix are identical except that they use the locale passed in instead. For more information, see [Locale](../locale.md).

The **`_wcslwr`** and **`_mbslwr`** functions are wide-character and multibyte-character versions of **`_strlwr`**. The argument and return value of **`_wcslwr`** are wide-character strings. The argument and return value of **`_mbslwr`** are multibyte-character strings. These three functions behave identically otherwise.

If *`str`* is a `NULL` pointer, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md) . If execution is allowed to continue, these functions return the original string and set `errno` to `EINVAL`.

In C++, these functions have template overloads that invoke the newer, secure counterparts of these functions. For more information, see [Secure template overloads](../secure-template-overloads.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tcslwr` | **`_strlwr`** | **`_mbslwr`** | **`_wcslwr`** |
| `_tcslwr_l` | **`_strlwr_l`** | **`_mbslwr_l`** | **`_wcslwr_l`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_strlwr`**, **`_strlwr_l`** | \<string.h> |
| **`_wcslwr`**, **`_wcslwr_l`** | \<string.h> or \<wchar.h> |
| **`_mbslwr`**, **`_mbslwr_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_strlwr.c
// compile with: /W3
// This program uses _strlwr and _strupr to create
// uppercase and lowercase copies of a mixed-case string.
#include <string.h>
#include <stdio.h>

int main( void )
{
   char string[100] = "The String to End All Strings!";
   char * copy1 = _strdup( string ); // make two copies
   char * copy2 = _strdup( string );

   _strlwr( copy1 ); // C4996
   // Note: _strlwr is deprecated; consider using _strlwr_s instead
   _strupr( copy2 ); // C4996
   // Note: _strupr is deprecated; consider using _strupr_s instead

   printf( "Mixed: %s\n", string );
   printf( "Lower: %s\n", copy1 );
   printf( "Upper: %s\n", copy2 );

   free( copy1 );
   free( copy2 );
}
```

```Output
Mixed: The String to End All Strings!
Lower: the string to end all strings!
Upper: THE STRING TO END ALL STRINGS!
```

## See also

[String manipulation](../string-manipulation-crt.md)\
[Locale](../locale.md)\
[`_strupr`, `_strupr_l`, `_mbsupr`, `_mbsupr_l`, `_wcsupr_l`, `_wcsupr`](strupr-strupr-l-mbsupr-mbsupr-l-wcsupr-l-wcsupr.md)