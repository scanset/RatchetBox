# Compiler Error C2428

> 'operation' : not allowed on operand of type 'bool'

## Remarks

You cannot apply a decrement operator to objects of type **`bool`**.

## Example

The following example generates C2428:

```cpp
// C2428.cpp
void g(bool fFlag) {
   --fFlag;   // C2428
   fFlag--;   // C2428
}
```