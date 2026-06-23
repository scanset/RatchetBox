# Compiler Error C3234

> a generic class may not derive from a generic type parameter

## Remarks

A generic class cannot inherit from a generic type parameter.

## Example

The following example generates C3234.

```cpp
// C3234.cpp
// compile with: /clr /c
generic <class T>
public ref class C : T {};   // C3234
// try the following line instead
// public ref class C {};
```