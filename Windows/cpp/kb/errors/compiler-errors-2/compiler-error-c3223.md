# Compiler Error C3223

> 'property' : you cannot apply 'typeid' to a property

## Remarks

You cannot apply [typeid](../../extensions/typeid-cpp-component-extensions.md) to a property.

## Example

The following example generates C3223.

```cpp
// C3223.cpp
// compile with: /clr
ref class R {
public:
   property int myprop;
};

int main() {
   System::Type^ type2 = R::myprop::typeid;   // C3223
}
```