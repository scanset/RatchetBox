# Compiler Error C2689

> 'function' : a friend function cannot be defined within a local class

## Remarks

You can declare but not define a friend function in a local class.

## Example

The following example generates C2689:

```cpp
// C2689.cpp
// compile with: /c
void g() {
   void f2();
   class X {
      friend void f2(){}   // C2689
      friend void f2();   // OK
   };
}
```