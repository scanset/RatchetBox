# `_ismbbkana`, `_ismbbkana_l`

Tests for a katakana symbol and is specific to code page 932.

## Syntax

```C
int _ismbbkana(
   unsigned int c
);
int _ismbbkana_l(
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

**`_ismbbkana`** returns a nonzero value if the integer *`c`* is a katakana symbol. Otherwise, it returns 0. **`_ismbbkana`** uses the current locale for locale-dependent character information. **`_ismbbkana_l`** is identical except that it uses the locale object passed in. For more information, see [Locale](../locale.md).

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbkana`** | \<mbctype.h> |
| **`_ismbbkana_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)