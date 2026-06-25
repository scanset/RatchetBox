# Compiler Error C2120

> 'void' illegal with all types

## Remarks

The **`void`** type is used in a declaration with another type.

## Example

The following example generates C2120:

```cpp
// C2120.cpp
int main() {
   void int i;   // C2120
   int j;   // OK
}
```