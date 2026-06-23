# Type for String Literals

String literals have type array of **`char`** (that is, **char[ ]**). (Wide-character strings have type array of **`wchar_t`** (that is, **wchar_t[ ]**).) This means that a string is an array with elements of type **`char`**. The number of elements in the array is equal to the number of characters in the string plus one for the terminating null character.

## See also

[C String Literals](../c-language/c-string-literals.md)