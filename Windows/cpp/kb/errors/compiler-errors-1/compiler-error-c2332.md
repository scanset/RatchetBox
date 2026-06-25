# Compiler Error C2332

> 'typedef' : missing tag name

## Remarks

The compiler found an incomplete type definition.

## Example

The following example generates C2332:

```cpp
// C2332.cpp
// compile with: /c
struct S {
   int i;
};

typedef struct * pS;   // C2332
typedef struct S* pS;   // OK

int get_S_i(pS p) {
   return p->i;
}
```