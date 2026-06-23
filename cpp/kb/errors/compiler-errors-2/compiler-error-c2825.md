# Compiler Error C2825

> var : must be a class or namespace when followed by '::'

## Remarks

An unsuccessful attempt was made to form a qualified name.

For example, make sure that your code does not contain a function declaration where the function name begins with ::.

## Example

The following example generates C2825:

```cpp
// C2825.cpp
typedef int i;
int main() {
   int* p = new int;
   p->i::i();   // C2825
   // try the following line instead
   // p->i::~i();
}
```