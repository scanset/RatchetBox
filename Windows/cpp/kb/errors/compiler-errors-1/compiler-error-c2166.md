# Compiler Error C2166

> l-value specifies const object

## Remarks

Code attempts to modify an item declared **`const`**.

## Example

The following example generates C2166:

```cpp
// C2166.cpp
int main()
{
    ((const int&)1) = 5;   // C2166
}
```