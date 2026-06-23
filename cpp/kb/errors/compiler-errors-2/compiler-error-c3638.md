# Compiler Error C3638

> 'operator' : the standard boxing and unboxing conversion operators cannot be redefined

## Remarks

The compiler defines a conversion operator for each managed class to support implicit boxing. This operator cannot be redefined.

For more information, see [Implicit Boxing](../../extensions/boxing-cpp-component-extensions.md).

## Example

The following example generates C3638:

```cpp
// C3638.cpp
// compile with: /clr
value struct V {
   V(){}
   static operator V^(V);   // C3638
};

int main() {
   V myV;
   V ^ pmyV = myV;   // operator supports implicit boxing
}
```