# `isalnum`, `iswalnum`, `_isalnum_l`, `_iswalnum_l`

Determines whether an integer represents an alphanumeric character.

## Syntax

```C
int isalnum( int c );
int iswalnum( wint_t c );
int _isalnum_l( int c,  _locale_t locale );
int _iswalnum_l( wint_t c, _locale_t locale );
```

### Parameters

*`c`*\
Integer to test.

*`locale`*\
The locale to use.

## Return value

Each of these routines returns nonzero if *`c`* is a particular representation of an alphanumeric character. **`isalnum`** returns a nonzero value if either `isalpha` or `isdigit` is nonzero for *`c`*, that is, if *`c`* is within the ranges A - Z, a - z, or 0 - 9. **`iswalnum`** returns a nonzero value if either `iswalpha` or `iswdigit` is nonzero for *`c`*. Each of these routines returns 0 if *`c`* doesn't satisfy the test condition.

The versions of these functions that have the `_l` suffix use the locale parameter that's passed in instead of the current locale. For more information, see [Locale](../locale.md).

The behavior of **`isalnum`** and **`_isalnum_l`** is undefined if *`c`* isn't EOF or in the range 0 through 0xFF, inclusive. When a debug CRT library is used and *`c`* isn't one of these values, the functions raise an assertion.

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_istalnum` | **`isalnum`** | [`_ismbcalnum`](ismbcalnum-functions.md) | **`iswalnum`** |
| **`_istalnum_l`** | **`_isalnum_l`** | **`_ismbcalnum_l`** | **`_iswalnum_l`** |

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`isalnum`** | \<ctype.h> |
| **`iswalnum`** | \<ctype.h> or \<wchar.h> |
| **`_isalnum_l`** | \<ctype.h> |
| **`_iswalnum_l`** | \<ctype.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Character classification](../character-classification.md)\
[Locale](../locale.md)\
[`is`, `isw` routines](../is-isw-routines.md)