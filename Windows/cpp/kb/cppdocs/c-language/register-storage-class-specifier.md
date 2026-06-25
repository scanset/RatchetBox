# `register` storage-class specifier

**Microsoft Specific**

The Microsoft C/C++ compiler doesn't honor user requests for register variables. However, for portability all other semantics associated with the **`register`** keyword are honored by the compiler. For example, you can't apply the unary address-of operator (**`&`**) to a register object nor can the **`register`** keyword be used on arrays.

**END Microsoft Specific**

## See also

[Storage-class specifiers for internal-level declarations](../c-language/storage-class-specifiers-for-internal-level-declarations.md)