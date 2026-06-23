# `strcspn`, `wcscspn`, `_mbscspn`, `_mbscspn_l`

Returns the index of the first occurrence in a string, of a character that belongs to a set of characters.

> [!IMPORTANT]
> `_mbschr` and `_mbschr_l` cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
size_t strcspn(
   const char *str,
   const char *strCharSet
);
size_t wcscspn(
   const wchar_t *str,
   const wchar_t *strCharSet
);
size_t _mbscspn(
   const unsigned char *str,
   const unsigned char *strCharSet
);
size_t _mbscspn_l(
   const unsigned char *str,
   const unsigned char *strCharSet,
   _locale_t locale
);
```

### Parameters

*`str`*\
Null-terminated searched string.

*`strCharSet`*\
Null-terminated character set.

*`locale`*\
Locale to use.

## Return value

These functions return the index of the first character in *`str`* that is in *`strCharSet`*. If none of the characters in *`str`* is in *`strCharSet`*, then the return value is the length of *`str`*.

No return value is reserved to indicate an error.

## Remarks

**`wcscspn`** and **`_mbscspn`** are wide-character and multibyte-character versions of **`strcspn`**. The arguments of **`wcscspn`** are wide-character strings. The arguments and return value of **`_mbscspn`** are multibyte-character strings.

**`_mbscspn`** validates its parameters. If either *`str`* or *`strCharSet`* is a null pointer, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, the function returns 0 and sets `errno` to `EINVAL`. **`strcspn`** and **`wcscspn`** don't validate their parameters. These three functions behave identically otherwise.

The output value is affected by the setting of the `LC_CTYPE` category setting of the locale. For more information, see [`setlocale`](setlocale-wsetlocale.md). The versions of these functions without the `_l` suffix use the current locale for this locale-dependent behavior; the versions with the `_l` suffix are identical except that they use the locale parameter passed in instead. For more information, see [Locale](../locale.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tcscspn` | **`strcspn`** | **`_mbscspn`** | **`wcscspn`** |

## Requirements

| Routine | Required header |
|---|---|
| **`strcspn`** | \<string.h> |
| **`wcscspn`** | \<string.h> or \<wchar.h> |
| **`_mbscspn`**, **`_mbscspn_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_strcspn.c

#include <string.h>
#include <stdio.h>

void test( const char * str, const char * strCharSet )
{
   int pos = strcspn( str, strCharSet );
   printf( "strcspn( \"%s\", \"%s\" ) = %d\n", str, strCharSet, pos );
}

int main( void )
{
   test( "xyzbxz", "abc" );
   test( "xyzbxz", "xyz" );
   test( "xyzbxz", "no match" );
   test( "xyzbxz", "" );
   test( "", "abc" );
   test( "", "" );
}
```

```Output
strcspn( "xyzbxz", "abc" ) = 3
strcspn( "xyzbxz", "xyz" ) = 0
strcspn( "xyzbxz", "no match" ) = 6
strcspn( "xyzbxz", "" ) = 6
strcspn( "", "abc" ) = 0
strcspn( "", "" ) = 0
```

## See also

[String manipulation](../string-manipulation-crt.md)\
[Locale](../locale.md)\
[Interpretation of multibyte-character sequences](../interpretation-of-multibyte-character-sequences.md)\
[`strncat`, `_strncat_l`, `wcsncat`, `_wcsncat_l`, `_mbsncat`, `_mbsncat_l`](strncat-strncat-l-wcsncat-wcsncat-l-mbsncat-mbsncat-l.md)\
[`strncmp`, `wcsncmp`, `_mbsncmp`, `_mbsncmp_l`](strncmp-wcsncmp-mbsncmp-mbsncmp-l.md)\
[`strncpy`, `_strncpy_l`, `wcsncpy`, `_wcsncpy_l`, `_mbsncpy`, `_mbsncpy_l`](strncpy-strncpy-l-wcsncpy-wcsncpy-l-mbsncpy-mbsncpy-l.md)\
[`_strnicmp`, `_wcsnicmp`, `_mbsnicmp`, `_strnicmp_l`, `_wcsnicmp_l`, `_mbsnicmp_l`](strnicmp-wcsnicmp-mbsnicmp-strnicmp-l-wcsnicmp-l-mbsnicmp-l.md)\
[`strrchr`, `wcsrchr`, `_mbsrchr`, `_mbsrchr_l`](strrchr-wcsrchr-mbsrchr-mbsrchr-l.md)\
[`strspn`, `wcsspn`, `_mbsspn`, `_mbsspn_l`](strspn-wcsspn-mbsspn-mbsspn-l.md)