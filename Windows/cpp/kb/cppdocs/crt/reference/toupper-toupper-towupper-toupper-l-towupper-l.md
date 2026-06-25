# `toupper`, `_toupper`, `towupper`, `_toupper_l`, `_towupper_l`

Convert character to uppercase.

## Syntax

```C
int toupper(
   int c
);
int _toupper(
   int c
);
int towupper(
   wint_t c
);
int _toupper_l(
   int c ,
   _locale_t locale
);
int _towupper_l(
   wint_t c ,
   _locale_t locale
);
```

### Parameters

*`c`*\
Character to convert.

*`locale`*\
Locale to use.

## Return value

Each of these routines converts a copy of *`c`*, if possible, and returns the result.

If *`c`* is a wide character for which `iswlower` is nonzero and there's a corresponding wide character for which [`iswupper`](isupper-isupper-l-iswupper-iswupper-l.md) is nonzero, **`towupper`** returns the corresponding wide character; otherwise, **`towupper`** returns *`c`* unchanged.

There's no return value reserved to indicate an error.

## Remarks

Each of these routines converts a given lowercase letter to an uppercase letter if possible and appropriate. The case conversion of **`towupper`** is locale-specific. Only the characters relevant to the current locale are changed in case. The functions without the `_l` suffix use the currently set locale. The versions of these functions with the `_l` suffix take the locale as a parameter and use that instead of the currently set locale. For more information, see [Locale](../locale.md).

For **`toupper`** to give the expected results, [`__isascii`](isascii-isascii-iswascii.md) must return nonzero.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| `TCHAR.H` routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_totupper` | **`toupper`** | **`_mbctoupper`** | **`towupper`** |
| `_totupper_l` | **`_toupper_l`** | **`_mbctoupper_l`** | **`_towupper_l`** |

> [!NOTE]
> **`_toupper_l`** and **`_towupper_l`** have no locale dependence and are not meant to be called directly. They are provided for internal use by **`_totupper_l`**.

## Requirements

| Routine | Required header |
|---|---|
| **`toupper`** | \<ctype.h> |
| **`_toupper`** | \<ctype.h> |
| **`towupper`** | \<ctype.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See the example in [`to` functions](../to-functions.md).

## See also

[`is`, `isw` routines](../is-isw-routines.md)\
[`to` functions](../to-functions.md)\
[Locale](../locale.md)\
[Interpretation of multibyte-character sequences](../interpretation-of-multibyte-character-sequences.md)