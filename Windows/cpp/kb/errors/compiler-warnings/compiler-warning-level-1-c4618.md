# Compiler Warning (level 1) C4618

> pragma parameters included an empty string; pragma ignored

## Remarks

A null string was given as an argument to a **#pragma**.

The pragma was processed without the argument.

## Example

The following example generates C4618:

```cpp
// C4618.cpp
// compile with: /W1 /LD
#pragma code_seg("")   // C4618
```