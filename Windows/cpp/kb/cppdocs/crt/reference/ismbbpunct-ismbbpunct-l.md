# `_ismbbpunct`, `_ismbbpunct_l`

Determines whether a particular character is a punctuation character.

## Syntax

```C
int _ismbbpunct(
   unsigned int c
);
int _ismbbpunct_l(
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

**`_ismbbpunct`** returns a nonzero value if the integer *`c`* is a non-ASCII punctuation symbol. **`_ismbbpunct`** uses the current locale for any locale-dependent character settings. **`_ismbbpunct_l`** is identical except that it uses the locale that's passed in. For more information, see [Locale](../locale.md).

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbpunct`** | \<mbctype.h> |
| **`_ismbbpunct_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)