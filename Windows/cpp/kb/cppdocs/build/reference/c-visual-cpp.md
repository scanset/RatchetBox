# `<c>` documentation tag

The `<c>` tag indicates that text within a description should be marked as code. Use [`<code>`](code-visual-cpp.md) to indicate multiple lines as code.

## Syntax

```cpp
/// <c>text</c>
```

### Parameters

*`text`*\
The text you want to indicate as code.

## Remarks

Compile with [`/doc`](doc-process-documentation-comments-c-cpp.md) to process documentation comments to a file.

## Example

```cpp
// xml_c_tag.cpp
// compile with: /doc /LD
// post-build command: xdcmake xml_c_tag.xdc

/// Text for class MyClass.
class MyClass {
public:
   int m_i;
   MyClass() : m_i(0) {}

   /// <summary><c>MyMethod</c> is a method in the <c>MyClass</c> class.
   /// </summary>
   int MyMethod(MyClass * a) {
      return a -> m_i;
   }
};
```

## See also

[XML documentation](xml-documentation-visual-cpp.md)