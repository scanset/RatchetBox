# Compiler Error C2451

> conditional expression of type 'type' is illegal

## Remarks

The conditional expression evaluates to an integer type.

## Example

The following example generates C2451:

```cpp
// C2451.cpp
class B {};

int main () {
   B b1;
   int i = 0;
   if (b1)   // C2451
   // try the following line instead
   // if (i)
      ;
}
```