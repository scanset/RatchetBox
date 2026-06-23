# Compiler Error C2776

> only one 'get' method can be specified per property

## Remarks

You can only specify one `get` function in the [property](../../cpp/property-cpp.md) extended attribute. This error occurs when multiple `get` functions are specified.

## Example

The following example generates C2776:

```cpp
// C2776.cpp
struct A {
   __declspec(property(get=GetProp,get=GetPropToo))
   // try the following line instead
   // __declspec(property(get=GetProp))
      int prop;   // C2776
   int GetProp(void);
   int GetPropToo(void);
};
```