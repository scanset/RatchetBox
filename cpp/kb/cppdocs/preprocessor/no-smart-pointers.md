# no_smart_pointers import attribute

**C++ Specific**

Suppresses the creation of smart pointers for all interfaces in the type library.

## Syntax

> **#import** *type-library* **no_smart_pointers**

## Remarks

By default, when you use `#import`, you get a smart pointer declaration for all interfaces in the type library. These smart pointers are of type [_com_ptr_t](../cpp/com-ptr-t-class.md).

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)