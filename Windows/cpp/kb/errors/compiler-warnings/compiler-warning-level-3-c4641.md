# Compiler Warning (level 3) C4641

> XML document comment has an ambiguous cross reference

## Remarks

The compiler was unable to unambiguously resolve a reference. To resolve this warning, specify the parameter information necessary to make the reference unambiguous.

For more information, see [XML Documentation](../../build/reference/xml-documentation-visual-cpp.md).

## Example

The following example generates C4641.

```cpp
// C4641.cpp
// compile with: /W3 /doc /clr /c

/// <see cref="f" />   // C4641
// try the following line instead
// /// <see cref="f(int)" />
public ref class GR {
public:
   void f( int ) {}
   void f( char ) {}
};
```