# Naked (C)

**Microsoft Specific**

The naked storage-class attribute is a Microsoft-specific extension to the C language. The compiler generates code without prolog and epilog code for functions declared with the naked storage-class attribute. Naked functions are useful when you need to write your own prolog/epilog code sequences using inline assembler code. Naked functions are useful for writing virtual device drivers.

For specific information about using the naked attribute, see [Naked Functions](../c-language/naked-functions.md).

**END Microsoft Specific**

## See also

[C Extended Storage-Class Attributes](../c-language/c-extended-storage-class-attributes.md)