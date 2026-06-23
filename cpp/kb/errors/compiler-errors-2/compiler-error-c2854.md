# Compiler Error C2854

> syntax error in #pragma hdrstop

## Remarks

The `#pragma hdrstop` gives an invalid filename. The pragma can be followed by an optional filename in parentheses and quotation marks:

## Example

The following example generates C2854:

```cpp
// C2854.cpp
// compile with: /c
#pragma hdrstop( "\\source\\pchfiles\\myheader.pch" ]   // C2854
// try the following line instead
// #pragma hdrstop( "\\source\\pchfiles\\myheader.pch" )
```