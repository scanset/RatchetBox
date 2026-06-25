# Compiler Error C2271

> 'operator' : new/delete cannot have formal list modifiers

## Remarks

The operator (**`new`** or **`delete`**) is declared with a memory-model specifier.

## Example

The following example generates C2271:

```cpp
// C2271.cpp
// compile with: /c
void* operator new(size_t) const {   // C2271
// try the following line instead
// void* operator new(size_t) {
   return 0;
}

struct X {
   static void* operator new(size_t) const;   // C2271
   // try the following line instead
   // void * X::operator new(size_t) const;   // static member operator new
};
```