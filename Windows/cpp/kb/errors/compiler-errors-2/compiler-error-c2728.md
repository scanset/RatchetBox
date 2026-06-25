# Compiler Error C2728

> 'type' : a native array cannot contain this type

## Remarks

Array creation syntax was used to create an array of managed or WinRT objects. You cannot create an array of managed or WinRT objects using native array syntax.

For more information, see [array](../../extensions/arrays-cpp-component-extensions.md).

## Example

The following example generates C2728 and shows how to fix it:

```cpp
// C2728.cpp
// compile with: /clr

int main() {
   int^ arr[5];   // C2728

   // try the following line instead
   array<int>^arr2;
}
```