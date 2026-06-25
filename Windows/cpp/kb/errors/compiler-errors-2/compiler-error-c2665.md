# Compiler Error C2665

> 'function' : none of the number1 overloads can convert parameter number2 from type 'type'

## Remarks

A parameter of the overloaded function cannot be converted to the required type.  Possible resolutions:

- Supply a conversion operator.

- Use explicit conversion.

## Example

The following example generates C2665.

```cpp
// C2665.cpp
void func(short, char*){}
void func(char*, char*){}

int main() {
   func(0, 1);   // C2665
   func((short)0, (char*)1);   // OK
}
```