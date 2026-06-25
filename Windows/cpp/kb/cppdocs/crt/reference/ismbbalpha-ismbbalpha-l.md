# `_ismbbalpha`, `_ismbbalpha_l`

Determines whether a specified multibyte character is alpha.

## Syntax

```C
int _ismbbalpha(
   unsigned int c
);
int _ismbbalpha_l(
   unsigned int c
);
```

### Parameters

*`c`*\
Integer to be tested.

*`locale`*\
Locale to use.

## Return value

**`_ismbbalpha`** returns a nonzero value when the expression:

`isalpha(c) || _ismbbkalnum(c)`

is nonzero for *`c`*, or 0 when the expression is zero. **`_ismbbalpha`** uses the current locale for any locale-dependent character settings. **`_ismbbalpha_l`** is identical except that it uses the locale passed in.

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbalpha`** | \<mbctype.h> |
| **`_ismbbalpha_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)