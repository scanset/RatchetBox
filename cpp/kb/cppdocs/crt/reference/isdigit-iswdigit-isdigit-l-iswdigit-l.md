# `isdigit`, `iswdigit`, `_isdigit_l`, `_iswdigit_l`

Determines whether an integer represents a decimal-digit character.

## Syntax

```C
int isdigit(
   int c
);
int iswdigit(
   wint_t c
);
int _isdigit_l(
   int c,
   _locale_t locale
);
int _iswdigit_l(
   wint_t c,
   _locale_t locale
);
```

### Parameters

*`c`*\
Integer to test.

*`locale`*\
The locale to use.

## Return value

Each of these routines returns nonzero if *`c`* is a particular representation of a decimal-digit character. **`isdigit`** returns a nonzero value if *`c`* is a decimal digit (0 - 9). **`iswdigit`** returns a nonzero value if *`c`* is a wide character that corresponds to a decimal-digit character. Each of these routines returns 0 if *`c`* doesn't satisfy the test condition.

The versions of these functions that have the `_l` suffix use the locale that's passed in instead of the current locale for their locale-dependent behavior. For more information, see [Locale](../locale.md).

The behavior of **`isdigit`** and **`_isdigit_l`** is undefined if *`c`* isn't EOF or in the range 0 through 0xFF, inclusive. When a debug CRT library is used and *`c`* isn't one of these values, the functions raise an assertion.

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_istdigit` | **`isdigit`** | [`_ismbcdigit`](ismbcalnum-functions.md) | **`iswdigit`** |
| `_istdigit_l` | **`_isdigit_l`** | [`_ismbcdigit_l`](ismbcalnum-functions.md) | **`_iswdigit_l`** |

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`isdigit`** | \<ctype.h> |
| **`iswdigit`** | \<ctype.h> or \<wchar.h> |
| **`_isdigit_l`** | \<ctype.h> |
| **`_iswdigit_l`** | \<ctype.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Character classification](../character-classification.md)\
[Locale](../locale.md)\
[`is`, `isw` routines](../is-isw-routines.md)