# Compiler Error C3065

> property declaration at non-class scope is not allowed

## Remarks

The [property](../../cpp/property-cpp.md) __declspec modifier was used outside a class.  A property can only be declared inside a class.

## Example

The following example generates C3065:

```cpp
// C3065.cpp
// compile with: /c
__declspec(property(get=get_i)) int i;   // C3065

class x {
public:
   __declspec(property(get=get_i)) int i;   // OK
};
```