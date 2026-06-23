# `iscsym`, `iscsymf`, `__iscsym`, `__iswcsym`, `__iscsymf`, `__iswcsymf`, `_iscsym_l`, `_iswcsym_l`, `_iscsymf_l`, `_iswcsymf_l`

Determine if an integer represents a character that may be used in an identifier.

## Syntax

```C
int __iscsym(
   int c
);
int __iswcsym(
   wint_t c
);
int __iscsymf(
   int c
);
int __iswcsymf(
   wint_t c
);
int _iscsym_l(
   int c,
   _locale_t locale
);
int _iswcsym_l(
   wint_t c,
   _locale_t locale
);
int _iscsymf_l(
   int c,
   _locale_t locale
);
int _iswcsymf_l(
   wint_t c,
   _locale_t locale
);
#define iscsym __iscsym
#define iscsymf __iscsymf
```

### Parameters

*`c`*\
Integer to test. *`c`* should be in the range of 0-255 for the narrow character version of the function.

*`locale`*\
The locale to use.

## Return value

Both **`__iscsym`** and **`__iswcsym`** return a nonzero value if *`c`* is a letter, underscore, or digit. Both **`__iscsymf`** and **`__iswcsymf`** return a nonzero value if *`c`* is a letter or an underscore. Each of these routines returns 0 if *`c`* doesn't satisfy the test condition. The versions of these functions with the `_l` suffix are identical except that they use the *`locale`* passed in instead of the current locale for their locale-dependent behavior. For more information, see [Locale](../locale.md).

## Remarks

These routines are defined as macros unless the preprocessor macro _CTYPE_DISABLE_MACROS is defined. When you use the macro versions of these routines, the arguments can be evaluated more than once. Be careful when you use expressions that have side effects within the argument list.

For backward compatibility, **`iscsym`** and **`iscsymf`** are defined as macros only when [`__STDC__`](../../preprocessor/predefined-macros.md) isn't defined or is defined as 0; otherwise they're undefined.

## Requirements

| Routine | Required header |
|---|---|
| **`iscsym`**, **`iscsymf`**, **`__iscsym`**, **`__iswcsym`**, **`__iscsymf`**, **`__iswcsymf`**, **`_iscsym_l`**, **`_iswcsym_l`**, **`_iscsymf_l`**, **`_iswcsymf_l`** | C: \<ctype.h><br /><br /> C++: \<cctype> or \<ctype.h> |

The **`iscsym`**, **`iscsymf`**, **`__iscsym`**, **`__iswcsym`**, **`__iscsymf`**, **`__iswcsymf`**, **`_iscsym_l`**, **`_iswcsym_l`**, **`_iscsymf_l`**, and **`_iswcsymf_l`** routines are Microsoft-specific. For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Character classification](../character-classification.md)\
[Locale](../locale.md)\
[`is`, `isw` routines](../is-isw-routines.md)