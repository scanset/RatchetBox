# Compiler Error C3142

> 'property_name' : you cannot take the address of a property

## Remarks

The address of a property is not available to the developer.

## Example

The following example generates C3142:

```cpp
// C3142_2.cpp
// compile with: /clr
using namespace System;
ref class CSize {
private:
   property int Size {
      int get();
   }
};

int main() {
    &CSize::Size; // C3142
}
```