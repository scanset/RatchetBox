# Compiler Error C2906

> 'specialization' : explicit specialization requires 'template <>'

## Remarks

You must use the new syntax for explicit specialization of templates.

## Example

The following example generates C2906:

```cpp
// C2906.cpp
// compile with: /c
template<class T> class X{};   // primary template
class X<int> { }   // C2906
template<> class X<int> { };   // new syntax
```