# Compiler Error C2448

> 'identifier' : function-style initializer appears to be a function definition

## Remarks

The function definition is incorrect.

This error can be caused by an old-style C-language formal list.

## Example

The following example generates C2448:

```cpp
// C2448.cpp
void func(c)
   int c;
{}   // C2448
```