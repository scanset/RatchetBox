# Compiler Error C2673

> 'function' : global functions do not have 'this' pointers

## Remarks

A global function tried to access **`this`**.

## Example

The following example generates C2673:

```cpp
// C2673.cpp
int main() {
   this = 0;   // C2673
}
```