# Calling Example: Function Prototype and Call

**Microsoft Specific**

The following example shows the results of making a function call using various calling conventions.

This example is based on the following function skeleton. Replace `calltype` with the appropriate calling convention.

```cpp
void    calltype MyFunc( char c, short s, int i, double f );
.
.
.
void    MyFunc( char c, short s, int i, double f )
    {
    .
    .
    .
    }
.
.
.
MyFunc ('x', 12, 8192, 2.7183);
```

For more information, see [Results of Calling Example](../cpp/results-of-calling-example.md).

**END Microsoft Specific**

## See also

[Calling Conventions](../cpp/calling-conventions.md)