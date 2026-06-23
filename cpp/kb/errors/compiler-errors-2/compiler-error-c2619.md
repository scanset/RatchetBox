# Compiler Error C2619

> 'identifier': a static data member is not allowed in an anonymous struct or union

## Remarks

A member of an anonymous struct or union is declared **`static`**.

## Example

The following example generates C2619, and demonstrates how to fix it by removing the static keyword.

```cpp
// C2619.cpp
int main() {
   union { static int j; };  // C2619
   union { int j; };  // OK
}
```