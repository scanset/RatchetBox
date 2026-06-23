# Compiler Error C2777

> only one 'put' method can be specified per property

## Remarks

A [property](../../cpp/property-cpp.md) declspec modifier had more than one `put` property.

## Example

The following example generates C2777:

```cpp
// C2777.cpp
struct A {
   __declspec(property(put=PutProp,put=PutPropToo))   // C2777
   // try the following line instead
   // __declspec(property(put=PutProp))
      int prop;
   int PutProp(void);
   int PutPropToo(void);
};
```