# Compiler Error C2101

> '&' on constant

## Remarks

The [address-of operator (**`&`**)](../../cpp/address-of-operator-amp.md) must have an l-value as operand.

## Example

The following example generates C2101:

```cpp
// C2101.cpp
int main()
{
    int* ptr = &123;   // C2101
}
```