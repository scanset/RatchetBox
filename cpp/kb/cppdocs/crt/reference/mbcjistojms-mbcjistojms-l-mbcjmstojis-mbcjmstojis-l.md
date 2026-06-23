# `_mbcjistojms`, `_mbcjistojms_l`, `_mbcjmstojis`, `_mbcjmstojis_l`

Converts between Japan Industry Standard (JIS) and Japan Microsoft (JMS) characters.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
unsigned int _mbcjistojms(
   unsigned int c
);
unsigned int _mbcjistojms_l(
   unsigned int c,
   _locale_t locale
);
unsigned int _mbcjmstojis(
   unsigned int c
);
unsigned int _mbcjmstojis_l(
   unsigned int c,
   _locale_t locale
);
```

### Parameters

*`c`*\
Character to convert.

*`locale`*\
Locale to use.

## Return value

On Japanese locale, these functions return a converted character or return 0 if no conversion is possible. On a non-Japanese locale, these functions return the character passed in.

## Remarks

The **`_mbcjistojms`** function converts a Japan Industry Standard (JIS) character to a Microsoft Kanji (Shift JIS) character. The character is converted only if the lead and trail bytes are in the range 0x21 - 0x7E. If the lead or trial byte is outside this range, `errno` is set to `EILSEQ`. For more information about this and other error codes, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md).

The **`_mbcjmstojis`** function converts a Shift JIS character to a JIS character. The character is converted only if the lead byte is in the range 0x81 - 0x9F or 0xE0 - 0xFC and the trail byte is in the range 0x40 - 0x7E or 0x80 - 0xFC. Some code points in that range don't have a character assigned, and so can't be converted.

The value *`c`* should be a 16-bit value whose upper 8 bits represent the lead byte of the character to convert and whose lower 8 bits represent the trail byte.

The output value is affected by the setting of the `LC_CTYPE` category setting of the locale. For more information, see [`setlocale`](setlocale-wsetlocale.md). The versions of these functions without the `_l` suffix use the current locale for this locale-dependent behavior; the versions with the `_l` suffix are identical except that they use the locale parameter passed in instead. For more information, see [Locale](../locale.md).

In earlier versions, **`_mbcjistojms`** and **`_mbcjmstojis`** were called `jistojms` and `jmstojis`, respectively. **`_mbcjistojms`**, **`_mbcjistojms_l`**, **`_mbcjmstojis`** and **`_mbcjmstojis_l`** should be used instead.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_mbcjistojms`** | \<mbstring.h> |
| **`_mbcjistojms_l`** | \<mbstring.h> |
| **`_mbcjmstojis`** | \<mbstring.h> |
| **`_mbcjmstojis_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Data conversion](../data-conversion.md)\
[`_ismbb` routines](../ismbb-routines.md)