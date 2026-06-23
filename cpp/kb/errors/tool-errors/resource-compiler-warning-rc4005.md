# Resource Compiler Warning RC4005

> 'identifier' : macro redefinition

## Remarks

The identifier is defined twice. The compiler used the second macro definition.

This warning can be caused by defining a macro on the command line and in the code with a `#define` directive. It also can be caused by macros imported from include files.

To eliminate the warning, either remove one of the definitions or use an `#undef` directive before the second definition.