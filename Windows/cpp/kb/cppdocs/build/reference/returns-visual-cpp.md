# `<returns>` documentation tag

The `<returns>` tag should be used in the comment for a method declaration to describe the return value.

## Syntax

```cpp
/// <returns>description</returns>
```

### Parameters

*`description`*\
A description of the return value.

## Remarks

Compile with [`/doc`](doc-process-documentation-comments-c-cpp.md) to process documentation comments to a file.

## Example

```cpp
// xml_returns_tag.cpp
// compile with: /LD /clr /doc
// post-build command: xdcmake xml_returns_tag.dll

/// Text for class MyClass.
public ref class MyClass {
public:
   /// <returns>Returns zero.</returns>
   int GetZero() { return 0; }
};
```

## See also

[XML documentation](xml-documentation-visual-cpp.md)