# Compiler Error C2874

> using-declaration causes a multiple declaration of 'symbol'

## Remarks

The declaration causes the same item to be defined twice.

## Example

The following example generates C2874:

```cpp
// C2874.cpp
namespace Z {
   int i;
}

int main() {
   int i;
   using Z::i;   // C2874, i already declared
}
```