# Compiler Error C3697

> 'qualifier' : cannot use this qualifier on '^'

## Remarks

The tracking handle (^) was applied to a qualifier for which it was not designed.

## Example

The following example generates C3697:

```cpp
// C3697.cpp
// compile with: /clr
using namespace System;
int main() {
   String ^__restrict s;   // C3697
   String ^ s2;   // OK
}
```