# Compiler Error C2779

> 'declaration' : property methods can only be associated with non-static data members

## Remarks

The **`property`** extended attribute is incorrectly applied to a static data member.

## Example

The following example generates C2779:

```cpp
// C2779.cpp
struct A {
   static __declspec(property(put=PutProp))
   // try the following line instead
   __declspec(property(put=PutProp))
      int prop;   // C2779
   int PutProp(void);
};
```