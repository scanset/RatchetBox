# Compiler Error C2370

> 'identifier' : redefinition; different storage class

## Remarks

The identifier is already declared with a different storage class.

## Examples

The following example generates C2370:

```cpp
// C2370.cpp
// compile with: /Za /c
extern int i;
static int i;   // C2370
int i;   // OK
```

The following example generates C2370:

```cpp
// C2370b.cpp
#define Thread __declspec( thread )
extern int tls_i;
int Thread tls_i;   // C2370 declaration and the definition differ
int tls_i;   // OK
```