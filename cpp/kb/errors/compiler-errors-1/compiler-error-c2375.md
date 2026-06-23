# Compiler Error C2375

> 'function' : redefinition; different linkage

## Remarks

The function is already declared with a different linkage specifier.

## Example

The following example generates C2375:

```cpp
// C2375.cpp
// compile with: /Za /c
extern void func( void );
static void func( void );   // C2375
static void func2( void );   // OK
```