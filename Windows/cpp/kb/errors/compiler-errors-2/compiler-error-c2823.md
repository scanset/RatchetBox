# Compiler Error C2823

> a typedef template is illegal

## Remarks

Templates are not allowed in **`typedef`** definitions.

## Example

The following example generates C2823, and shows one way to fix it:

```cpp
// C2823.cpp
template<class T>
typedef struct x {
   T i;   // C2823 can't use T, specify data type and delete template
   int i;   // OK
} x1;
```