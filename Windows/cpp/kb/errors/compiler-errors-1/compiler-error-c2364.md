# Compiler Error C2364

> 'type': illegal type for custom attribute

## Remarks

Named arguments for custom attributes are limited to compile time constants. For example, integral types (int, char, etc.), System::Type^, and System::Object^.

## Example

The following example generates C2364.

```cpp
// c2364.cpp
// compile with: /clr /c
using namespace System;

[attribute(AttributeTargets::All)]
public ref struct ABC {
public:
   // Delete the following line to resolve.
   ABC( Enum^ ) {}   // C2364
   ABC( int ) {}   // OK
};
```