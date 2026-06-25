# Compiler Error C2720

> '*identifier*' : '*specifier*' storage-class specifier illegal on members

## Remarks

The storage class cannot be used on class members outside the declaration. To fix this error, remove the unneeded [storage class](../../cpp/storage-classes-cpp.md) specifier from the definition of the member outside the class declaration.

## Example

The following example generates C2720 and shows how to fix it:

```cpp
// C2720.cpp
struct S {
   static int i;
};
static S::i;   // C2720 - remove the unneeded 'static' to fix it
```