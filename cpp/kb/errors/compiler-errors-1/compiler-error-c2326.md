# Compiler Error C2326

> 'declarator' : function cannot access 'name'

## Remarks

The code tries to modify a member variable, which is not possible.

## Example

The following example generates C2326:

```cpp
// C2326.cpp
void MyFunc() {
   int i;

   class MyClass  {
   public:
      void mf() {
         i = 4;   // C2326 i is inaccessible
      }
   };
}
```