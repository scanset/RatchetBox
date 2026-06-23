# `_ismbcalnum`, `_ismbcalnum_l`, `_ismbcalpha`, `_ismbcalpha_l`, `_ismbcdigit`, `_ismbcdigit_l`

Checks whether a multibyte character is an alphanumeric, alpha, or digit character.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int _ismbcalnum
(
   unsigned int c
);
int _ismbcalnum_l
(
   unsigned int c,
   _locale_t locale
);
int _ismbcalpha
(
   unsigned int c
);
int _ismbcalpha_l
(
   unsigned int c,
   _locale_t locale
);
int _ismbcdigit
(
   unsigned int c
);
int _ismbcdigit_l
(
   unsigned int c,
   _locale_t locale
);
```

### Parameters

*`c`*\
Character to be tested.

*`locale`*\
Locale to use.

## Return value

Each of these routines returns a nonzero value if the character satisfies the test condition. Otherwise, they return 0. If *`c`*<= 255 and there's a corresponding `_ismbb` routine (for example, **`_ismbcalnum`** corresponds to `_ismbbalnum`), the result is the return value of the corresponding `_ismbb` routine.

## Remarks

Each of these routines tests a given multibyte character for a given condition.

The versions of these functions with the `_l` suffix are identical except that they use the locale passed in instead of the current locale for their locale-dependent behavior. For more information, see [Locale](../locale.md).

| Routine | Test condition | Code page 932 example |
|---|---|---|
| **`_ismbcalnum`**, **`_ismbcalnum_l`** | Alphanumeric | Returns nonzero if and only if *`c`* is a single-byte representation of an ASCII English letter: See examples for **`_ismbcdigit`** and **`_ismbcalpha`**. |
| **`_ismbcalpha`**, **`_ismbcalpha_l`** | Alphabetic | Returns nonzero if and only if *`c`* is a single-byte representation of an ASCII English letter: 0x41<=*`c`*<=0x5A or 0x61<=*`c`*<=0x7A; or a katakana letter: 0xA6<=*`c`*<=0xDF. |
| **`_ismbcdigit`**, **`_ismbcdigit_l`** | Digit | Returns nonzero if and only if *`c`* is a single-byte representation of an ASCII digit: 0x30<=*`c`*<=0x39. |

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_ismbcalnum`**, **`_ismbcalnum_l`** | \<mbstring.h> |
| **`_ismbcalpha`**, **`_ismbcalpha_l`** | \<mbstring.h> |
| **`_ismbcdigit`**, **`_ismbcdigit_l`** | \<mbstring.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Character classification](../character-classification.md)\
[`_ismbc` routines](../ismbc-routines.md)\
[`is`, `isw` routines](../is-isw-routines.md)\
[`_ismbb` routines](../ismbb-routines.md)