# Compiler Error C2348

> 'type name' : is not a C-style aggregate, cannot be exported in embedded-IDL

## Remarks

To place a **`struct`** in a .idl file with the [export](../../windows/attributes/export.md) attribute, the **`struct`** must contain only data.

## Example

The following example generates C2348:

```cpp
// C2348.cpp
// C2348 error expected
[ module(name="SimpleMidlTest") ];

[export]
struct Point {
   // Delete the following two lines to resolve.
   Point() : m_i(0), m_j(0) {}
   Point(int i, int j) : m_i(i), m_j(j) {}

   int m_i;
   int m_j;
};
```