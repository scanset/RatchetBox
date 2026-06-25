# Compiler Warning (level 1) C4615

> #pragma warning : unknown user warning type

## Remarks

An invalid warning specifier was used with **pragma** [warning](../../preprocessor/warning.md). To resolve the error, use a valid warning specifier.

## Example

The following example generates C4615:

```cpp
// C4615.cpp
// compile with: /W1 /LD
#pragma warning(enable : 4401)   // C4615, 'enable' not valid specifier

// use the code below to resolve the error
// #pragma warning(default : 4401)
```