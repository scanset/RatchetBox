# Compiler Warning (level 1) C4177

> #pragma pragma should be at global scope

## Remarks

The [pragma](../../preprocessor/pragma-directives-and-the-pragma-keyword.md) pragma should not be used within a local scope. The **pragma** will not be valid until global scope is encountered after the current scope.

## Example

The following example generates C4177:

```cpp
// C4177.cpp
// compile with: /W1
// #pragma bss_seg("global")   // OK

int main() {
   #pragma bss_seg("local")    // C4177
}
```