# Compiler Error C2940

> '*class*' : type-class-id redefined as a local typedef

## Remarks

You can't use a generic or template class as a local **`typedef`**.

This error is obsolete in Visual Studio 2022 and later versions.

## Examples

The following example generates C2940:

```cpp
// C2940.cpp
template<class T>
struct TC {};
int main() {
   typedef int TC<int>;   // C2940
   typedef int TC;   // OK
}
```

C2940 can also occur when using generics:

```cpp
// C2940b.cpp
// compile with: /clr
generic<class T>
ref struct GC { };

int main() {
   typedef int GC<int>;   // C2940
   typedef int GC;
}
```