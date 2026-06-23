# Compiler Error C2883

> 'name' : function declaration conflicts with 'identifier' introduced by using-declaration

## Remarks

You tried to define a function more than once. The first definition was made from a namespace with a **`using`** declaration. The second was a local definition.

## Example

The following example generates C2883:

```cpp
// C2883.cpp
namespace A {
   void z(int);
}

int main() {
   using A::z;
   void z(int);   // C2883  z is already defined
}
```