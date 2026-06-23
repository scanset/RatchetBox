# Compiler Warning (level 3) C4102

> 'label' : unreferenced label

## Remarks

The label is defined but never referenced. The compiler ignores the label.

## Example

The following example generates C4102:

```cpp
// C4102.cpp
// compile with: /W3
int main() {
   int a;

   test:   // C4102, remove the unreferenced label to resolve

   a = 1;
}
```