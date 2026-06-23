# raw_interfaces_only import attribute

**C++ Specific**

Suppresses the generation of error-handling wrapper functions, and [property](../cpp/property-cpp.md) declarations that use those wrapper functions.

## Syntax

> **#import** *type-library* **raw_interfaces_only**

## Remarks

The **raw_interfaces_only** attribute also causes the default prefix used in naming the non-property functions to be removed. Normally, the prefix is `raw_`. If this attribute is specified, the function names are taken directly from the type library.

This attribute allows you to expose only the low-level contents of the type library.

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)