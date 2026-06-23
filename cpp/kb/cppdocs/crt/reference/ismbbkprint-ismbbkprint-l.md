# `_ismbbkprint`, `_ismbbkprint_l`

Determines whether a particular multibyte character is a punctuation symbol.

## Syntax

```C
int _ismbbkprint(
   unsigned int c
);
int _ismbbkprint_l(
   unsigned int c,
   _locale_t locale
);
```

### Parameters

*`c`*\
Integer to be tested.

*`locale`*\
Locale to use.

## Return value

**`_ismbbkprint`** returns a nonzero value if the integer *`c`* is a non-ASCII text or non-ASCII punctuation symbol. Otherwise, it returns 0. For example, in code page 932 only, **`_ismbbkprint`** tests for katakana alphanumeric or katakana punctuation (range: 0xA1 - 0xDF). **`_ismbbkprint`** uses the current locale for locale-dependent character settings. **`_ismbbkprint_l`** is identical except that it uses the locale passed in. For more information, see [Locale](../locale.md).

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbkprint`** | \<mbctype.h> |
| **`_ismbbkprint_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)