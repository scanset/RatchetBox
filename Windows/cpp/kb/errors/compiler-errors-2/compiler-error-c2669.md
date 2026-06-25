# Compiler Error C2669

> member function not allowed in anonymous union

## Remarks

[Anonymous unions](../../cpp/unions.md#anonymous_unions) cannot have member functions.

## Example

The following example generates C2669:

```cpp
// C2669.cpp
struct X {
   union {
      int i;
      void f() {   // C2669, remove function
         i = 0;
      }
   };
};
```