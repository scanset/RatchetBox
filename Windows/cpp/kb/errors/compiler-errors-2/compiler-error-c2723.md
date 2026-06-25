# Compiler Error C2723

> 'function' : 'specifier' specifier illegal on function definition

## Remarks

The specifier cannot appear with a function definition outside of a class declaration. The **`virtual`** specifier can be specified only on a member function declaration within a class declaration.

## Example

The following example generates C2723 and shows how to fix it:

```cpp
// C2723.cpp
struct X {
   virtual void f();
   virtual void g();
};

virtual void X::f() {}   // C2723

// try the following line instead
void X::g() {}
```