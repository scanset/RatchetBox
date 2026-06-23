# no_dual_interfaces import attribute

**C++ Specific**

Changes the way the compiler generates wrapper functions for dual interface methods.

## Syntax

> **#import** *type-library* **no_dual_interfaces**

## Remarks

Normally, the wrapper calls the method through the virtual function table for the interface. With **no_dual_interfaces**, the wrapper instead calls `IDispatch::Invoke` to invoke the method.

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)