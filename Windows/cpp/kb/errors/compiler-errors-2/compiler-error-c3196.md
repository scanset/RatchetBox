# Compiler Error C3196

> 'keyword' : used more than once

## Remarks

A keyword was used more than once.

## Example

The following example generates C3196:

```cpp
// C3196.cpp
// compile with: /clr
ref struct R abstract abstract {};   // C3196
ref struct S abstract {};   // OK
```