# Compiler Error C3911

> 'event_accessor_method': function must have type 'signature'

## Remarks

An event's accessor method was not properly declared.

For more information, see [event](../../extensions/event-cpp-component-extensions.md).

## Example

The following example generates C3911:

```cpp
// C3911.cpp
// compile with: /clr
using namespace System;
delegate void H(String^, int);

ref class X {
   event H^ E1 {
      void add() {}   // C3911
      // try the following line instead
      // void add(H ^ h) {}

      void remove(){}
      // try the following line instead
      // void remove(H ^ h) {}

      void raise(){}
      // try the following line instead
      // void raise(String ^ s, int i) {}
   };
};
```