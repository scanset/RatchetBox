# SAL annotations

If you examine the library header files, you may notice some unusual annotations, for example, `_In_z_` and `_Out_z_cap_(_Size)`. These annotations are examples of the Microsoft source-code annotation language (SAL). SAL provides a set of annotations to describe how a function uses its parameters and return type. For example, it indicates the assumptions it makes about them and the guarantees it makes on finishing. The header file \<sal.h> defines the annotations.

For more information about using SAL annotations in Visual Studio, see [Using SAL annotations to reduce C/C++ code defects](../code-quality/using-sal-annotations-to-reduce-c-cpp-code-defects.md).

## See also

[C runtime (CRT) and C++ Standard Library (STL) `.lib` files](./crt-library-features.md)