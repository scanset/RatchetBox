# `_mbctolower`, `_mbctolower_l`, `_mbctoupper`, `_mbctoupper_l`

Tests and converts the case of a multibyte character.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
unsigned int _mbctolower(
   unsigned int c
);
unsigned int _mbctolower_l(
   unsigned int c,
   _locale_t locale
);
unsigned int _mbctoupper(
   unsigned int c
);
unsigned int _mbctoupper_l(
   unsigned int c,
   _locale_t locale
);
```

### Parameters

*`c`*\
Multibyte character to convert.

*`locale`*\
Locale to use.

## Return value

Each of these functions returns the converted character *`c`*, if possible. Otherwise it returns the character *`c`* unchanged.

## Remarks

The functions test a character *`c`* and, if possible, apply one of the following conversions.

| Routines | Converts |
|---|---|
| **`_mbctolower`**, **`_mbctolower_l`** | Uppercase character to lowercase character. |
| **`_mbctoupper`**, **`_mbctoupper_l`** | Lowercase character to uppercase character. |

The output value is affected by the setting of the `LC_CTYPE` category setting of the locale. For more information, see [`setlocale`](setlocale-wsetlocale.md). The version of this function without the `_l` suffix uses the current locale for this locale-dependent behavior; the version with the `_l` suffix is identical except that it uses the locale parameter passed in instead. For more information, see [Locale](../locale.md).

In previous versions, **`_mbctolower`** was called `jtolower`, and **`_mbctoupper`** was called `jtoupper`. For new code, use the new names instead.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_totlower` | `tolower` | **`_mbctolower`** | `towlower` |
| `_totlower_l` | `_tolower_l` | **`_mbctolower_l`** | `_towlower_t` |
| `_totupper` | `toupper` | **`_mbctoupper`** | `towupper` |
| `_totupper_l` | `toupper_l` | **`_mbctoupper_l`** | `_towupper_l` |

## Requirements

| Routines | Required header |
|---|---|
| **`_mbctolower`**, **`_mbctolower_l`** | \<mbstring.h> |
| **`_mbctoupper`**, **`_mbctoupper_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Data conversion](../data-conversion.md)\
[`_mbbtombc`, `_mbbtombc_l`](mbbtombc-mbbtombc-l.md)\
[`_mbcjistojms`, `_mbcjistojms_l`, `_mbcjmstojis`, `_mbcjmstojis_l`](mbcjistojms-mbcjistojms-l-mbcjmstojis-mbcjmstojis-l.md)\
[`_mbctohira`, `_mbctohira_l`, `_mbctokata`, `_mbctokata_l`](mbctohira-mbctohira-l-mbctokata-mbctokata-l.md)\
[`_mbctombb`, `_mbctombb_l`](mbctombb-mbctombb-l.md)