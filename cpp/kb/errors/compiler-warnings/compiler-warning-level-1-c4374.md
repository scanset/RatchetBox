# Compiler Warning (level 1) C4374

> 'function1': interface method will not be implemented by non-virtual method 'function2'

## Remarks

The compiler expected to find the [virtual](../../cpp/virtual-specifier.md) keyword on a method definition.

## Example

The following example generates C4374:

```cpp
// C4374.cpp
// compile with: /clr /W1 /c /WX
public interface class I {
   void f();
};

public ref struct B {
   void f() {
      System::Console::WriteLine("B::f()");
   }
};

public ref struct C {
   virtual void f() {
      System::Console::WriteLine("C::f()");
   }
};

public ref struct D : B, I {};   // C4374
public ref struct E : C, I {};   // OK
```