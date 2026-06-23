# Compiler Error C2648

> 'identifier' : use of member as default parameter requires static member

## Remarks

A non-static member is used as a default parameter.

## Example

The following example generates C2648:

```cpp
// C2648.cpp
// compile with: /c
class C {
public:
   int i;
   static int j;
   void func1( int i = i );  // C2648  i is not static
   void func2( int i = j );  // OK
};
```