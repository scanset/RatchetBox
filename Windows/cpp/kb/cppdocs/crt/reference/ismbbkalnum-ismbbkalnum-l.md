# `_ismbbkalnum`, `_ismbbkalnum_l`

Determines whether a particular multibyte character is a non-ASCII text symbol.

## Syntax

```C
int _ismbbkalnum(
   unsigned int c
);
int _ismbbkalnum_l(
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

**`_ismbbkalnum`** returns a nonzero value if the integer *`c`* is a non-ASCII text symbol other than punctuation. Otherwise, it returns 0. **`_ismbbkalnum`** uses the current locale for locale-dependent character information. **`_ismbbkalnum_l`** is identical to **`_ismbbkalnum`** except that it takes the locale as a parameter. For more information, see [Locale](../locale.md).

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbkalnum`** | \<mbctype.h> |
| **`_ismbbkalnum_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)