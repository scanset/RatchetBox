# Compiler Error C2953

> 'identifier' : class template has already been defined

## Remarks

Check the source file and include files for other definitions.

## Example

The following example generates C2953:

```cpp
// C2953.cpp
// compile with: /c
template <class T>  class A {};
template <class T>  class A {};   // C2953
template <class T>  class B {};   // OK
```