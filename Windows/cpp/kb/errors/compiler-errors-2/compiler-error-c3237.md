# Compiler Error C3237

> 'generic_class' : a generic class cannot be a custom attribute

## Remarks

Generic classes cannot be user-defined attributes.

## Example

The following example generates C3237.

```cpp
// C3237.cpp
// compile with: /clr /c
// C3237 expected
using namespace System;

generic <class T>
// Delete the following line to resolve.
[attribute(AttributeTargets::All, AllowMultiple=true)]
public ref class GR {};
```