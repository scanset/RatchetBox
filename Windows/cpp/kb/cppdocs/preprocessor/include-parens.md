# include() import attribute

**C++ Specific**

Disables automatic exclusion.

## Syntax

> **#import** *type-library* **include( "**_Name1_**"** [__,"__*Name2*__"__ ... ] __)__

### Parameters

*Name1*\
First item to be forcibly included.

*Name2*\
Second item to be forcibly included (if necessary).

## Remarks

Type libraries may include definitions of items defined in system headers or other type libraries. `#import` attempts to avoid multiple definition errors by automatically excluding such items. If some items shouldn't be excluded automatically, you may see [Compiler Warning (level 3) C4192](../error-messages/compiler-warnings/compiler-warning-level-3-c4192.md). You can use this attribute to disable the automatic exclusion. This attribute can take any number of arguments, one for each name of a type-library item to be included.

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)