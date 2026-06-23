# Compiler Error C2784

> 'declaration' : could not deduce template argument for 'type' from 'type'

## Remarks

The compiler cannot determine a template argument from the supplied function arguments.

## Example

The following example generates C2784 and shows how to fix it:

```cpp
// C2784.cpp
template<class T> class X {};
template<class T> void f(X<T>) {}

int main() {
   X<int> x;
   f(1);   // C2784

   // To fix it, try the following line instead
   f(x);
}
```