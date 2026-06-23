# Compiler Error C2735

> '*keyword*' keyword is not permitted in formal parameter type specifier

## Remarks

The keyword is invalid in this context.

## Example

The following example generates C2735:

```cpp
// C2735.cpp
// compile with: /c

void func(virtual int) {}   // C2735
```