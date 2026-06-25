# Compiler Error C2499

> 'class' : a class cannot be its own base class

## Remarks

You attempted to specify the class that you are defining as a base class.

## Example

The following example generates C2499:

```cpp
// C2499.cpp
// compile with: /c
class CMyClass : public CMyClass {};   // C2499
class CMyClass{};   // OK
```