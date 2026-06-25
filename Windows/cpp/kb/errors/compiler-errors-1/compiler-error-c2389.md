# Compiler Error C2389

> 'operator' : illegal operand 'nullptr'

## Remarks

**`nullptr`** cannot be an operand.

## Example

The following example generates C2389:

```cpp
// C2389.cpp
// compile with: /clr
int main() {
   throw nullptr;   // C2389
}
```