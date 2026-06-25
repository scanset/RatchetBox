# Compiler Error C3749

> 'attribute': a custom attribute may not be used inside a function

## Remarks

A custom attribute cannot be used inside a function. For more information on custom attributes, see the topic [attribute](../../windows/attributes/attribute.md).

## Example

The following example generates C3749:

```cpp
// C3749a.cpp
// compile with: /clr /c
using namespace System;

[AttributeUsage(AttributeTargets::All)]
public ref struct ABC : public Attribute {
   ABC() {}
};

void f1() { [ABC]; };  // C3749
```