# Compiler Error C2462

> 'identifier' : cannot define a type in a 'new-expression'

## Remarks

You cannot define a type in the operand field of the **`new`** operator. Put the type definition in a separate statement.

## Example

The following example generates C2462:

```cpp
// C2462.cpp
int main()
{
   new struct S { int i; };   // C2462
}
```