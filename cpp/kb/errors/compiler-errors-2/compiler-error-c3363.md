# Compiler Error C3363

> 'type' : 'typeid' can only be applied to a type

## Remarks

The [typeid](../../extensions/typeid-cpp-component-extensions.md) operator was used incorrectly.

## Example

The following example generates C3363.

```cpp
// C3363.cpp
// compile with: /clr
int main() {
   System::typeid;   // C3363
}
```