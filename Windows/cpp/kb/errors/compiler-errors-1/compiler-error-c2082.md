# Compiler Error C2082

> redefinition of formal parameter 'identifier'

## Remarks

A formal parameter to a function is redeclared within the function body. To resolve the error, remove the redefinition.

## Example

The following example generates C2082:

```cpp
// C2082.cpp
void func(int num1) {
   int num1;   // C2082
   int num2;   // OK

   auto lambda1 = [](int num1){ int num1; };   // C2082
   auto lambda2 = [](int num1){ int num2; };   // OK
}
```