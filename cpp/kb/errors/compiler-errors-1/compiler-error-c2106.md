# Compiler Error C2106

> 'operator' : left operand must be l-value

## Remarks

The operator must have an l-value as its left operand.

## Example

The following example generates C2106:

```cpp
// C2106.cpp
int main() {
   int a;
   1 = a;   // C2106
   a = 1;   // OK
}
```