# `isalpha`, `iswalpha`, `_isalpha_l`, `_iswalpha_l`

Determines whether an integer represents an alphabetic character.

## Syntax

```C
int isalpha(
   int c
);
int iswalpha(
   wint_t c
);
int _isalpha_l(
   int c,
   _locale_t locale
);
int _iswalpha_l(
   wint_t c,
   _locale_t locale
);
```

### Parameters

*`c`*\
Integer to test.

*`locale`*\
The locale to use instead of the current locale.

## Return value

Each of these routines returns nonzero if *`c`* is a particular representation of an alphabetic character. **`isalpha`** returns a nonzero value if *`c`* is within the ranges A - Z or a - z. **`iswalpha`** returns a nonzero value only for wide characters for which [`iswupper`](isupper-isupper-l-iswupper-iswupper-l.md) or `iswlower` is nonzero; that is, for any wide character that is one of an implementation-defined set for which none of `iswcntrl`, `iswdigit`, `iswpunct`, or `iswspace` is nonzero. Each of these routines returns 0 if *`c`* doesn't satisfy the test condition.

The versions of these functions that have the `_l` suffix use the locale parameter that's passed in instead of the current locale. For more information, see [Locale](../locale.md).

The behavior of **`isalpha`** and **`_isalpha_l`** is undefined if *`c`* isn't EOF or in the range 0 through 0xFF, inclusive. When a debug CRT library is used and *`c`* isn't one of these values, the functions raise an assertion.

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_istalpha` | **`isalpha`** | **`_ismbcalpha`** | **`iswalpha`** |
| `_istalpha_l` | **`_isalpha_l`** | **`_ismbcalpha_l`** | **`_iswalpha_l`** |

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`isalpha`** | \<ctype.h> |
| **`iswalpha`** | \<ctype.h> or \<wchar.h> |
| **`_isalpha_l`** | \<ctype.h> |
| **`_iswalpha_l`** | \<ctype.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Character classification](../character-classification.md)\
[Locale](../locale.md)\
[`is`, `isw` routines](../is-isw-routines.md)