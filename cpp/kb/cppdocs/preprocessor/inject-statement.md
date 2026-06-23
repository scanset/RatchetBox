# inject_statement import attribute

**C++ Specific**

Inserts its argument as source text into the type-library header.

## Syntax

> **#import** *type-library* **inject_statement(** "*source-text*" **)**

### Parameters

*source-text*\
Source text to be inserted into the type library header file.

## Remarks

The text is placed at the beginning of the namespace declaration that wraps the *type-library* contents in the header file.

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)