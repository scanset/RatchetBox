# Compiler Error C2182

> '*identifier*': this use of 'void' is not valid

## Remarks

You can't create a variable or array of type **`void`**. Only pointers to **`void`** are allowed.

## Example

The following example generates C2182:

```cpp
// C2182.cpp
// compile with: /c

void var;      // C2182
void arr[5];   // C2182

void* ptr;     // OK
```