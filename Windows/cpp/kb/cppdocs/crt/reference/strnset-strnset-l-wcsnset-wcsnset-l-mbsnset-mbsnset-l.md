# `_strnset`, `_strnset_l`, `_wcsnset`, `_wcsnset_l`, `_mbsnset`, `_mbsnset_l`

Initializes characters of a string to a given character. More secure versions of these functions exist; see [`_strnset_s`, `_strnset_s_l`, `_wcsnset_s`, `_wcsnset_s_l`, `_mbsnset_s`, `_mbsnset_s_l`](strnset-s-strnset-s-l-wcsnset-s-wcsnset-s-l-mbsnset-s-mbsnset-s-l.md).

> [!IMPORTANT]
> **`_mbsnset`** and **`_mbsnset_l`** cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
char *_strnset(
   char *str,
   int c,
   size_t count
);
char *_strnset_l(
   char *str,
   int c,
   size_t count,
   _locale_t locale
);
wchar_t *_wcsnset(
   wchar_t *str,
   wchar_t c,
   size_t count
);
wchar_t *_wcsnset_l(
   wchar_t *str,
   wchar_t c,
   size_t count,
   _locale_t locale
);
unsigned char *_mbsnset(
   unsigned char *str,
   unsigned int c,
   size_t count
);
unsigned char *_mbsnset_l(
   unsigned char *str,
   unsigned int c,
   size_t count,
   _locale_t locale
);
```

### Parameters

*`str`*\
String to be altered.

*`c`*\
Character setting.

*`count`*\
Number of characters to be set.

*`locale`*\
Locale to use.

## Return value

Returns a pointer to the altered string.

## Remarks

The **`_strnset`** function sets, at most, the first *`count`* characters of *`str`* to *`c`* (converted to **`char`**). If *`count`* is greater than the length of *`str`*, the length of *`str`* is used instead of *`count`*.

**`_wcsnset`** and **`_mbsnset`** are wide-character and multibyte-character versions of **`_strnset`**. The string arguments and return value of **`_wcsnset`** are wide-character strings. The string arguments and return value of **`_mbsnset`** are multibyte-character strings. These three functions behave identically otherwise.

**`_mbsnset`** validates its parameters; if *`str`* is a null pointer, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md) . If execution is allowed to continue, **`_mbsnset`** returns `NULL` and sets `errno` to `EINVAL`. **`_strnset`** and **`_wcsnset`** don't validate their parameters.

The output value is affected by the setting of the `LC_CTYPE` category setting of the locale. For more information, see [`setlocale`](setlocale-wsetlocale.md). The versions of these functions without the `_l` suffix use the current locale for this locale-dependent behavior; the versions with the `_l` suffix are identical except that they use the locale parameter passed in instead. For more information, see [Locale](../locale.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tcsnset` | **`_strnset`** | **`_mbsnbset`** | **`_wcsnset`** |
| `_tcsnset_l` | **`_strnset_l`** | **`_mbsnbset_l`** | **`_wcsnset_l`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_strnset`** | \<string.h> |
| **`_strnset_l`** | \<tchar.h> |
| **`_wcsnset`** | \<string.h> or \<wchar.h> |
| **`_wcsnset_l`** | \<tchar.h> |
| **`_mbsnset`**, **`_mbsnset_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_strnset.c
// compile with: /W3
#include <string.h>
#include <stdio.h>

int main( void )
{
   char string[15] = "This is a test";
   /* Set not more than 4 characters of string to be *'s */
   printf( "Before: %s\n", string );
   _strnset( string, '*', 4 ); // C4996
   // Note: _strnset is deprecated; consider using _strnset_s
   printf( "After:  %s\n", string );
}
```

```Output
Before: This is a test
After:  **** is a test
```

## See also

[String manipulation](../string-manipulation-crt.md)\
[Locale](../locale.md)\
[Interpretation of multibyte-character sequences](../interpretation-of-multibyte-character-sequences.md)\
[`strcat`, `wcscat`, `_mbscat`](strcat-wcscat-mbscat.md)\
[`strcmp`, `wcscmp`, `_mbscmp`](strcmp-wcscmp-mbscmp.md)\
[`strcpy`, `wcscpy`, `_mbscpy`](strcpy-wcscpy-mbscpy.md)\
[`_strset`, `_strset_l`, `_wcsset`, `_wcsset_l`, `_mbsset`, `_mbsset_l`](strset-strset-l-wcsset-wcsset-l-mbsset-mbsset-l.md)