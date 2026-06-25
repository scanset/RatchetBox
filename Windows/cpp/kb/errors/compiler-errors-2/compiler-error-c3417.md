# Compiler Error C3417

> 'member' : value types cannot contain user-defined special member functions

## Remarks

Value types cannot contain functions such as a default instance constructor, destructor, or copy constructor.

## Example

The following example generates C3417:

```cpp
// C3417.cpp
// compile with: /clr /c
value class VC {
   VC(){}   // C3417

   // OK
   static VC(){}
   VC(int i){}
};
```