# Compiler Warning (level 1) C4551

> function call missing argument list

## Remarks

A function call must include the open and close parentheses after the function name even if the function takes no parameters.

## Example

The following example generates C4551:

```cpp
// C4551.cpp
// compile with: /W1
void function1() {
}

int main() {
   function1;   // C4551
   function1();   // OK
}
```