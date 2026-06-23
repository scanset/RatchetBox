# Compiler COM Support Classes

**Microsoft Specific**

Standard classes are used to support some of the COM types. The classes are defined in \<comdef.h> and the header files generated from the type library.

|Class|Purpose|
|-----------|-------------|
|[_bstr_t](../cpp/bstr-t-class.md)|Wraps the `BSTR` type to provide useful operators and methods.|
|[_com_error](../cpp/com-error-class.md)|Defines the error object thrown by [_com_raise_error](../cpp/com-raise-error.md) in most failures.|
|[_com_ptr_t](../cpp/com-ptr-t-class.md)|Encapsulates COM interface pointers, and automates the required calls to `AddRef`, `Release`, and `QueryInterface`.|
|[_variant_t](../cpp/variant-t-class.md)|Wraps the `VARIANT` type to provide useful operators and methods.|

**END Microsoft Specific**

## See also

[Compiler COM Support](../cpp/compiler-com-support.md)<br/>
[Compiler COM Global Functions](../cpp/compiler-com-global-functions.md)<br/>
[C++ Language Reference](../cpp/cpp-language-reference.md)