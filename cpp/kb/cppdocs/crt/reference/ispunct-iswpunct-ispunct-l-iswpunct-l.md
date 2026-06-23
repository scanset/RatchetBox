# `ispunct`, `iswpunct`, `_ispunct_l`, `_iswpunct_l`

Determines whether an integer represents a punctuation character.

## Syntax

```C
int ispunct(
   int c
);
int iswpunct(
   wint_t c
);
int _ispunct_l(
   int c,
   _locale_t locale
);
int _iswpunct_l(
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

Each of these routines returns nonzero if *`c`* is a particular representation of a punctuation character. **`ispunct`** returns a nonzero value for any printable character that isn't a space character or a character for which `isalnum` is nonzero. **`iswpunct`** returns a nonzero value for any printable wide character that isn't the space wide character or a wide character for which `iswalnum` is nonzero. Each of these routines returns 0 if *`c`* doesn't satisfy the test condition.

The result of the test condition for the **`ispunct`** function depends on the `LC_CTYPE` category setting of the locale. For more information, see [`setlocale`, `_wsetlocale`](setlocale-wsetlocale.md). The versions of these functions that don't have the `_l` suffix use the current locale for any locale-dependent behavior; the versions that do have the `_l` suffix are identical except that they use the locale that's passed in instead. For more information, see [Locale](../locale.md).

The behavior of **`ispunct`** and **`_ispunct_l`** is undefined if *`c`* isn't EOF or in the range 0 through 0xFF, inclusive. When a debug CRT library is used and *`c`* isn't one of these values, the functions raise an assertion.

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_istpunct` | **`ispunct`** | [`_ismbcpunct`](ismbcgraph-functions.md) | **`iswpunct`** |

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`ispunct`** | \<ctype.h> |
| **`iswpunct`** | \<ctype.h> or \<wchar.h> |
| **`_ispunct_l`** | \<ctype.h> |
| **`_iswpunct_l`** | \<ctype.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Character classification](../character-classification.md)\
[Locale](../locale.md)\
[`is`, `isw` routines](../is-isw-routines.md)