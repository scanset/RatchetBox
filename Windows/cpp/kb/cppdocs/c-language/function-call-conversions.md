# Function-Call Conversions

The type of conversion performed on the arguments in a function call depends on the presence of a function prototype (forward declaration) with declared argument types for the called function.

If a function prototype is present and includes declared argument types, the compiler performs type checking (see [Functions](../c-language/functions-c.md)).

If no function prototype is present, only the usual arithmetic conversions are performed on the arguments in the function call. These conversions are performed independently on each argument in the call. This means that a **`float`** value is converted to a **`double`**; a **`char`** or **`short`** value is converted to an **`int`**; and an **`unsigned char`** or **`unsigned short`** is converted to an **`unsigned int`**.

## See also

[Type Conversions](../c-language/type-conversions-c.md)