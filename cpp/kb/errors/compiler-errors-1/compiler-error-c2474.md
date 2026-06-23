# Compiler Error C2474

> 'keyword' : missing an adjacent semicolon, could be either keyword or identifier.

## Remarks

The compiler expected to find a semicolon, and was unable to determine your intent. Add the semicolon to resolve this error.

## Example

The following example generates C2474.

```cpp
// C2474.cpp
// compile with: /clr /c

ref class A {
   ref class B {}
   property int i;   // C2474 error
};

// OK
ref class B {
   ref class D {};
   property int i;
};

ref class E {
   ref class F {} property;
   int i;
};
```