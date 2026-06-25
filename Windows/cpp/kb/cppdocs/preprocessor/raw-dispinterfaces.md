# raw_dispinterfaces import attribute

**C++ Specific**

Tells the compiler to generate low-level wrapper functions for dispinterface methods, and for properties that call `IDispatch::Invoke` and return the HRESULT error code.

## Syntax

> **#import** *type-library* **raw_dispinterfaces**

## Remarks

If this attribute isn't specified, only high-level wrappers are generated, which throw C++ exceptions on failure.

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)