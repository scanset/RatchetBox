# Compiler Error C2464

> 'identifier' : cannot use 'new' to allocate a reference

## Remarks

A reference identifier was allocated with the **`new`** operator. References are not memory objects, so **`new`** cannot return a pointer to them. Use the standard variable declaration syntax to declare a reference.

## Example

The following example generates C2464:

```cpp
// C2464.cpp
int main() {
   new ( int& ir );   // C2464
}
```