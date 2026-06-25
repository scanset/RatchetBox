# Compiler Error C2587

> 'identifier' : illegal use of local variable as default parameter

## Remarks

Local variables are not allowed as default parameters.

## Example

The following example generates C2587:

```cpp
// C2587.cpp
// compile with: /c
int i;
void func() {
   int j;
   extern void func2( int k = j );  // C2587 -- local variable
   extern void func3( int k = i );   // OK
}
```