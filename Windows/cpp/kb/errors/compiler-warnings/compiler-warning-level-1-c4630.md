# Compiler Warning (level 1) C4630

> '*symbol*': '*extern*' storage-class specifier cannot be applied to a member

## Remarks

A data member or member function is defined as **`extern`**. Members cannot be external, although entire objects can. The compiler ignores the **`extern`** keyword.

## Example

The following example generates C4630:

```cpp
// C4630.cpp
// compile with: /W1 /LD
class A {
   void func();
};

extern void A::func() {   // C4630, remove 'extern' to resolve
}
```