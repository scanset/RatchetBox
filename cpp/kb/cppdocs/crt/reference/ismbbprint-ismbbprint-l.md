# `_ismbbprint`, `_ismbbprint_l`

Determines whether a specified multibyte character is a print character.

## Syntax

```C
int _ismbbprint(
   unsigned int c
);
int _ismbbprint_l(
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

**`_ismbbprint`** returns a nonzero value when the expression:

`isprint(c) || _ismbbkprint(c)`

is nonzero for *`c`*, or 0 when it isn't. **`_ismbbprint`** uses the current locale for any locale-dependent behavior. **`_ismbbprint_l`** is identical except that it uses the locale passed in instead. For more information, see [Locale](../locale.md).

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbprint`** | \<mbctype.h> |
| **`_ismbbprint_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)