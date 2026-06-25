# Compiler Error C2588

> '::~identifier' : illegal global destructor

## Remarks

The destructor is defined for something other than a class, structure, or union. This is not allowed.

This error can be caused by a missing class, structure, or union name on the left side of the scope resolution (`::`) operator.

## Example

The following example generates C2588:

```cpp
// C2588.cpp
~F();   // C2588
```