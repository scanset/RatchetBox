# Compiler Error C2102

> '&' requires l-value

## Remarks

The [address-of operator (**`&`**)](../../cpp/address-of-operator-amp.md) must have an l-value as operand. Address of temporary values cannot be taken.

## Example

The following example generates C2102:

```cpp
// C2102.cpp
int func()
{
    return 1;
}

int main()
{
    int* ptr = &func();   // C2102
}
```