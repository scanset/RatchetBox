# Compiler Error C2246

> 'identifier' : illegal static data member in locally defined class

## Remarks

A member of a class, structure, or union with local scope is declared **`static`**.

## Example

The following example generates C2246:

```cpp
// C2246.cpp
// compile with: /c
void func( void ) {
   class A { static int i; };   // C2246  i is local to func
   static int j;   // OK
}
```