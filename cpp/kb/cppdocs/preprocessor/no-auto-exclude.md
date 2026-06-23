# no_auto_exclude import attribute

**C++ Specific**

Disables automatic exclusion.

## Syntax

> **#import** *type-library* **no_auto_exclude**

## Remarks

Type libraries may include definitions of items defined in system headers or other type libraries. `#import` attempts to avoid multiple definition errors by automatically excluding such items. It causes [Compiler Warning (level 3) C4192](../error-messages/compiler-warnings/compiler-warning-level-3-c4192.md) to be issued for each item to be excluded. You can disable the automatic exclusion by using this attribute.

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)