# `_mbbtombc`, `_mbbtombc_l`

Converts a single-byte multibyte character to a corresponding double-byte multibyte character.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
unsigned int _mbbtombc(
   unsigned int c
);
unsigned int _mbbtombc_l(
   unsigned int c,
   _locale_t locale
);
```

### Parameters

*`c`*\
Single-byte character to convert.

*`locale`*\
Locale to use.

## Return value

If **`_mbbtombc`** successfully converts *`c`*, it returns a multibyte character; otherwise, it returns *`c`*.

## Remarks

The **`_mbbtombc`** function converts a given single-byte multibyte character to a corresponding double-byte multibyte character. Characters must be within the range 0x20 - 0x7E or 0xA1 - 0xDF to be converted.

The output value is affected by the setting of the `LC_CTYPE` category setting of the locale. For more information, see [`setlocale`, `_wsetlocale`](setlocale-wsetlocale.md). The versions of this function are identical, except that **`_mbbtombc`** uses the current locale for this locale-dependent behavior and **`_mbbtombc_l`** instead uses the locale parameter that's passed in. For more information, see [Locale](../locale.md).

In earlier versions, **`_mbbtombc`** was named `hantozen`. For new code, use **`_mbbtombc`**.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_mbbtombc`** | \<mbstring.h> |
| **`_mbbtombc_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Data conversion](../data-conversion.md)\
[`_mbctombb`, `_mbctombb_l`](mbctombb-mbctombb-l.md)