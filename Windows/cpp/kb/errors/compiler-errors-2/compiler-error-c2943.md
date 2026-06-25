# Compiler Error C2943

> '*class*' : type-class-id redefined as a type argument of a template

## Remarks

You can't use a generic or template class, instead of a symbol, as a generic or template type argument.

This error is obsolete in Visual Studio 2022 and later versions.

## Example

The following example generates C2943:

```cpp
// C2943.cpp
// compile with: /c
template<class T>
class List {};

template<class List<int> > class MyList;   // C2943
template<class T >  class MyList;
```