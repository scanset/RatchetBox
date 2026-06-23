# `_ismbbblank`, `_ismbbblank_l`

Determines whether a specified multibyte character is a blank character.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int _ismbbblank(
   unsigned int c
);
int _ismbbblank_l(
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

**`_ismbbblank`** returns a nonzero value if *`c`* represents a space (0x20) character, a horizontal tab (0x09) character, or a locale-specific character that's used to separate words within a line of text for which `isspace` is true; otherwise, returns 0. **`_ismbbblank`** uses the current locale for any locale-dependent behavior. **`_ismbbblank_l`** is identical except that it instead uses the locale that's passed in. For more information, see [Locale](../locale.md).

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbbblank`** | \<mbctype.h> |
| **`_ismbbblank_l`** | \<mbctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Byte classification](../byte-classification.md)\
[`_ismbb` routines](../ismbb-routines.md)