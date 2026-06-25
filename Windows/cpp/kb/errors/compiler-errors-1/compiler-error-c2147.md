# Compiler Error C2147

> syntax error : 'identifier' is a new keyword

## Remarks

An identifier was used that is now a reserved keyword in the language.

## Example

The following example generates C2147:

```cpp
// C2147.cpp
// compile with: /clr
int main() {
   int gcnew = 0;   // C2147
   int i = 0;   // OK
}
```