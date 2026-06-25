# Run-Time Type Information

Run-time type information (RTTI) is a mechanism that allows the type of an object to be determined during program execution. RTTI was added to the C++ language because many vendors of class libraries were implementing this functionality themselves. This caused incompatibilities between libraries. Thus, it became obvious that support for run-time type information was needed at the language level.

For the sake of clarity, this discussion of RTTI is almost completely restricted to pointers. However, the concepts discussed also apply to references.

There are three main C++ language elements to run-time type information:

- The [dynamic_cast](../cpp/dynamic-cast-operator.md) operator.

   Used for conversion of polymorphic types.

- The [typeid](../cpp/typeid-operator.md) operator.

   Used for identifying the exact type of an object.

- The [type_info](../cpp/type-info-class.md) class.

   Used to hold the type information returned by the **`typeid`** operator.

## See also

[Casting](../cpp/casting.md)