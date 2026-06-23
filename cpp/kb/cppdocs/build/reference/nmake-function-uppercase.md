# `uppercase` NMAKE function

Evaluates to a string where all characters have been converted to their uppercase equivalent.

## Syntax

```makefile
$(uppercase input)
```

### Parameters

*`input`*\
The string to convert.

## Return value

Returns *`input`*, but all characters have been converted to their uppercase equivalent.

## Remarks

This macro function is available starting in Visual Studio 2022 version 17.2, in NMAKE version 14.32 or later.

## Example

```makefile
$(uppercase Hello World!) # Evaluates to "HELLO WORLD!"
```

## See also

[Macros and NMAKE](macros-and-nmake.md)\
[NMAKE functions by category](using-an-nmake-macro.md#functions-by-category)