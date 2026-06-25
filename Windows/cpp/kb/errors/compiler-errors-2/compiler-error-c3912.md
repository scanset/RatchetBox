# Compiler Error C3912

> 'event': type of event must be a delegate type

## Remarks

An event was declared but was not of the proper type.

For more information, see [event](../../extensions/event-cpp-component-extensions.md).

## Example

The following example generates C3912:

```cpp
// C3912.cpp
// compile with: /clr
delegate void H();
ref class X {
   event int Ev;   // C3912
   event H^ Ev2;   // OK
};
```