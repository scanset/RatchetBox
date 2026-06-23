# Compiler Error C3769

> 'type' : a nested class cannot have the same name as the immediately enclosing class

## Remarks

A nested class cannot have the same name as the immediately enclosing class.

## Example

The following example generates C3769.

```cpp
// C3769.cpp
// compile with: /c
class x {
   class x {};   // C3769
   class y {
      class x{};   // OK
   };
};
```