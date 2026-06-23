# rename_namespace import attribute

**C++ Specific**

Renames the namespace that contains the contents of the type library.

## Syntax

> **#import** *type-library* **rename_namespace(** "*NewName*" **)**

### Parameters

*NewName*\
The new name of the namespace.

## Remarks

The **rename_namespace** attribute takes a single argument, *NewName*, which specifies the new name for the namespace.

To remove the namespace, use the [no_namespace](../preprocessor/no-namespace.md) attribute instead.

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)