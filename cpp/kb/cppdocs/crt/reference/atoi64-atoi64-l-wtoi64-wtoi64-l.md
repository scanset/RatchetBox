# `_atoi64`, `_atoi64_l`, `_wtoi64`, `_wtoi64_l`

Converts a string to a 64-bit integer.

## Syntax

```C
__int64 _atoi64(
   const char *str
);
__int64 _wtoi64(
   const wchar_t *str
);
__int64 _atoi64_l(
   const char *str,
   _locale_t locale
);
__int64 _wtoi64_l(
   const wchar_t *str,
   _locale_t locale
);
```

### Parameters

*`str`*\
String to be converted.

*`locale`*\
Locale to use.

## Return value

Each function returns the **`__int64`** value produced by interpreting the input characters as a number. The return value is 0 for **`_atoi64`** if the input can't be converted to a value of that type.

If the functions overflow with large positive integral values, they return `I64_MAX`. The functions return `I64_MIN` if they overflow with large negative integral values.

In all out-of-range cases, `errno` is set to `ERANGE`. If the parameter passed in is `NULL`, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, these functions set `errno` to `EINVAL` and return 0.

## Remarks

These functions convert a character string to a 64-bit integer value.

The input string is a sequence of characters that can be interpreted as a numerical value of the specified type. The function stops reading the input string at the first character that it can't recognize as part of a number. This character might be the null character ('\0' or L'\0') terminating the string.

The *`str`* argument to **`_atoi64`** has the following form:

> [*`whitespace`*] [*`sign`*] [*`digits`*]

A *`whitespace`* consists of space or tab characters, which are ignored; *`sign`* is either plus (+) or minus (-); and *`digits`* are one or more digits.

**`_wtoi64`** is identical to **`_atoi64`** except that it takes a wide character string as a parameter.

The versions of these functions with the `_l` suffix are identical except that they use the locale parameter passed in instead of the current locale. For more information, see [Locale](../locale.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tstoi64` | **`_atoi64`** | **`_atoi64`** | **`_wtoi64`** |
| `_ttoi64` | **`_atoi64`** | **`_atoi64`** | **`_wtoi64`** |

## Requirements

| Routines | Required header |
|---|---|
| **`_atoi64`**, **`_atoi64_l`** | \<stdlib.h> |
| **`_wtoi64`**, **`_wtoi64_l`** | \<stdlib.h> or \<wchar.h> |

## Example

This program shows how numbers stored as strings can be converted to numeric values using the **`_atoi64`** functions.

```C
// crt_atoi64.c
// This program shows how numbers stored as
// strings can be converted to numeric values
// using the _atoi64 functions.
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>

int main( void )
{
    char    *str = NULL;
    __int64 value = 0;

    // An example of the _atoi64 function
    // with leading and trailing white spaces.
    str = "  -2309 ";
    value = _atoi64( str );
    printf( "Function: _atoi64( \"%s\" ) = %d\n", str, value );

    // Another example of the _atoi64 function
    // with an arbitrary decimal point.
    str = "314127.64";
    value = _atoi64( str );
    printf( "Function: _atoi64( \"%s\" ) = %d\n", str, value );

    // Another example of the _atoi64 function
    // with an overflow condition occurring.
    str = "3336402735171707160320";
    value = _atoi64( str );
    printf( "Function: _atoi64( \"%s\" ) = %d\n", str, value );
    if (errno == ERANGE)
    {
       printf("Overflow condition occurred.\n");
    }
}
```

```Output
Function: _atoi64( "  -2309 " ) = -2309
Function: _atoi64( "314127.64" ) = 314127
Function: _atoi64( "3336402735171707160320" ) = -1
Overflow condition occurred.
```

## See also

[Data conversion](../data-conversion.md)\
[Math and floating-point support](../floating-point-support.md)\
[Locale](../locale.md)\
[`_ecvt`](ecvt.md)\
[`_fcvt`](fcvt.md)\
[`_gcvt`](gcvt.md)\
[`setlocale`, `_wsetlocale`](setlocale-wsetlocale.md)\
[`_atodbl`, `_atodbl_l`, `_atoldbl`, `_atoldbl_l`, `_atoflt`, `_atoflt_l`](atodbl-atodbl-l-atoldbl-atoldbl-l-atoflt-atoflt-l.md)