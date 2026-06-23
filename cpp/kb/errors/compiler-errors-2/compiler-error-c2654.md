# Compiler Error C2654

> 'identifier' : attempt to access member outside a member function

## Remarks

A member is accessed in a declaration. Member data can be accessed only in member functions.

This error can be caused when trying to initialize variables in a declaration. Use a constructor for this purpose.