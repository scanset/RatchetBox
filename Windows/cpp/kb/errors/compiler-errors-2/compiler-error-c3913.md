# Compiler Error C3913

> default property must be indexed

## Remarks

A default property was defined incorrectly.

For more information, see [property](../../extensions/property-cpp-component-extensions.md).

## Example

The following example generates C3913:

```cpp
// C3913.cpp
// compile with: /clr /c
ref struct X {
   property int default {   // C3913
   // try the following line instead
   // property int default[int] {
      int get(int) { return 0; }
      void set(int, int) {}
   }
};
```