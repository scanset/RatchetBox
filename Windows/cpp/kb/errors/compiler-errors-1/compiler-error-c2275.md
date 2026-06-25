# Compiler Error C2275

> 'identifier' : illegal use of this type as an expression

## Remarks

An expression uses the `->` operator with a **`typedef`** identifier.

## Example

The following example generates C2275:

```cpp
// C2275.cpp
typedef struct S {
    int mem;
} *S_t;
void func1( int *parm );
void func2() {
    func1( &S_t->mem );   // C2275, S_t is a typedef
}
```