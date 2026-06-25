# Compiler Error C2902

> '*token*' : unexpected token following '*template*', identifier expected

## Remarks

The token following the keyword **`template`** was not an identifier.

This error is obsolete in Visual Studio 2022 and later versions.

## Examples

The following example generates C2902:

```cpp
// C2902.cpp
// compile with: /c
namespace N {
   template<class T> class X {};
   class Y {};
}
void g() {
   N::template + 1;   // C2902
}

void f() {
   N::template X<int> x1;   // OK
}
```

C2902 can also occur when using generics:

```cpp
// C2902b.cpp
// compile with: /clr /c
namespace N {
   generic<class T> ref class GC {};
}

void f() {
   N::generic + 1;   // C2902
   N::generic GC<int>^ x;
}
```