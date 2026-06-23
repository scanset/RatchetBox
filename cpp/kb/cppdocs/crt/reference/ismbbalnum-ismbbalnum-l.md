# `_ismbbalnum`, `_ismbbalnum_l`

Determines whether a specified multibyte character is alpha or numeric.

## Syntax

```C
int _ismbbalnum(
   unsigned int c
);
int _ismbbalnum_l(
   unsigned int c
);
```

### Parameters

*`c`*\
Integer to be tested.

*`locale`*\
Locale to use.

## Return value

**`_ismbbalnum`** returns a nonzero value when the expression:

`isalnum(c) || _ismbbkalnum(c)`

is nonzero for *`c`*, or 0 when the expression is zero.

The version of this function with the `_l` suffix is identical except that it uses the locale passed in instead of the current locale for its locale-dependent behavior.

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbalnum`** | \<mbctype.h> |
| **`_ismbbalnum_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)