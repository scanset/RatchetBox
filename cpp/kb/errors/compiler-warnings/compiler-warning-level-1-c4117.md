# Compiler Warning (level 1) C4117

> macro name 'name' is reserved; 'Command' ignored

## Remarks

### To fix by checking the following possible causes

1. Trying to define or undefine a predefined macro.

1. Trying to define or undefine the preprocessor operator **defined**.

## Example

The following example generates C4117:

```cpp
// C4117.cpp
// compile with: /W1
#define __FILE__ test         // C4117. __FILE__ is a predefined macro
#define ValidMacroName test   // ok

int main() {
}
```