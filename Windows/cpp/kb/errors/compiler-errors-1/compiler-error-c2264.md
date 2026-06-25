# Compiler Error C2264

> 'function' : error in function definition or declaration; function not called

## Remarks

The function cannot be called due to an incorrect definition or declaration.

## Example

The following example generates C2264:

```cpp
// C2264.cpp
struct C {
   // Delete the following line to resolve.
   operator int(int = 0){}   // incorrect declaration
};

struct D {
   operator int(){return 0;}   // OK
};

int main() {
   int i;

   C c;
   i = c;   // C2264

   D d;
   i = d;   // OK
}
```