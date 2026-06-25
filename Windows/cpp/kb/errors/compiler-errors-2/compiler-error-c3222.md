# Compiler Error C3222

> 'parameter' : cannot declare default arguments for member functions of a managed or WinRT type or generic functions

## Remarks

It is not permitted to declare a method parameter with a default argument. An overloaded form of the method is one way to work around this issue. That is, define a method with the same name with no parameters and then initialize the variable in the method body.

## Example

The following example generates C3222:

```cpp
// C3222_2.cpp
// compile with: /clr
public ref class G {
   void f( int n = 0 );   // C3222
};
```