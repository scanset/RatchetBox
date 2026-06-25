# Compiler Error C2946

> explicit instantiation; 'class' is not a template-class specialization

## Remarks

You cannot explicitly instantiate a nontemplated class.

## Example

The following example generates C2946.

```cpp
// C2946.cpp
class C {};
template C;  // C2946
int main() {}
```