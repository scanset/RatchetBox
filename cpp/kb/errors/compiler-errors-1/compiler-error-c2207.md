# Compiler Error C2207

> 'member': a member of a class template cannot acquire a function type

## Remarks

The `member` of the class template was previously parsed as a non-static data member. It cannot be redefined as a member function.