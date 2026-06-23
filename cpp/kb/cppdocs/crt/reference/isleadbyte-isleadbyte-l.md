# `isleadbyte`, `_isleadbyte_l`

Determines whether a character is the lead byte of a multibyte character.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int isleadbyte( int c );
int _isleadbyte_l( int c );
```

### Parameters

*`c`*\
Integer to test.

## Return value

**`isleadbyte`** returns a nonzero value if the argument satisfies the test condition. Otherwise, it returns 0. In the "C" locale and in single-byte character set (SBCS) locales, **`isleadbyte`** always returns 0.

## Remarks

The **`isleadbyte`** macro returns a nonzero value if its argument is the first byte of a multibyte character. **`isleadbyte`** produces a meaningful result for any integer argument from -1 (`EOF`) to `UCHAR_MAX` (0xFF), inclusive.

The expected argument type of **`isleadbyte`** is **`int`**; if a signed character is passed, the compiler may convert it to an integer by sign extension, yielding unpredictable results.

The version of this function with the `_l` suffix is identical except that it uses the locale passed in instead of the current locale for its locale-dependent behavior.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| **`_istleadbyte`** | Always returns false | **`_isleadbyte`** | Always returns false |

## Requirements

| Routine | Required header |
|---|---|
| **`isleadbyte`** | \<ctype.h> |
| **`_isleadbyte_l`** | \<ctype.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Byte classification](../byte-classification.md)\
[Locale](../locale.md)\
[`_ismbb` routines](../ismbb-routines.md)