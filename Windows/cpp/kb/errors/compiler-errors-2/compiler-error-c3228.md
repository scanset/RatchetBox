# Compiler Error C3228

> 'function' : generic type argument for 'param' cannot be 'type', it must be a valuetype or handle type

## Remarks

An incorrect type was passed as a generic type argument.

## Example

The following example generates C3228:

```cpp
// C3228.cpp
// compile with: /clr
class A {};

value class B {};

generic <class T>
void Test() {}

ref class C {
public:
   generic <class T>
   static void f() {}
};

int main() {
   C::f<A>();   // C3228
   C::f<B>();   // OK

   Test<C>();   // C3228
   Test<C ^>();   // OK
}
```