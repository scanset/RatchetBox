# Compiler Error C2638

> 'identifier' : __based modifier illegal on pointer to member

## Remarks

The **`__based`** modifier cannot be used for pointers to members.

## Example

The following example generates C2638:

```cpp
// C2638.cpp
void *a;

class C {
public:
   int i;
   int j;
   int func();
};
int __based (a) C::* cpi = &C::i;  // C2638
int (__based (a) C::* cpf)() = &C::func; // c2638
```