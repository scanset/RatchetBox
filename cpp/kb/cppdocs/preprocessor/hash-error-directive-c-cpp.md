# #error directive (C/C++)

The `#error` directive emits a user-specified error message at compile time. Then it terminates the compilation.

## Syntax

> **#error** *token-string*

## Remarks

The error message that this directive emits includes the *token-string* parameter. The *token-string* parameter is not subject to macro expansion. This directive is most useful during preprocessing, to notify the developer of a program inconsistency, or the violation of a constraint. The following example demonstrates error processing during preprocessing:

```cpp
#if !defined(__cplusplus)
#error C++ compiler required.
#endif
```

## See also

[Preprocessor directives](../preprocessor/preprocessor-directives.md)\
[#warning directive](../preprocessor/hash-warning-directive-c-cpp.md)