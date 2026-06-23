# `toascii`, `__toascii`

Converts characters to 7-bit ASCII by truncation.

## Syntax

```C
int __toascii(
   int c
);
#define toascii __toascii
```

### Parameters

*`c`*\
Character to convert.

## Return value

**`__toascii`** converts the value of *`c`* to the 7-bit ASCII range and returns the result. There's no return value reserved to indicate an error.

## Remarks

The **`__toascii`** routine converts the given character to an ASCII character by truncating it to the low-order 7 bits. No other transformation is applied.

The **`__toascii`** routine is defined as a macro unless the preprocessor macro `_CTYPE_DISABLE_MACROS` is defined. For backward compatibility, **`toascii`** is defined as a macro only when [`__STDC__`](../../preprocessor/predefined-macros.md) isn't defined or is defined as 0; otherwise it's undefined.

## Requirements

| Routine | Required header |
|---|---|
| **`toascii`**, **`__toascii`** | C: \<ctype.h><br /><br /> C++: \<cctype> or \<ctype.h> |

The **`toascii`** macro is a POSIX extension, and **`__toascii`** is a Microsoft-specific implementation of the POSIX extension. For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Data conversion](../data-conversion.md)\
[`is`, `isw` routines](../is-isw-routines.md)\
[`to` functions](../to-functions.md)