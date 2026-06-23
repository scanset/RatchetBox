# Compiler Error C3413

> 'name' : invalid explicit instantiation

## Remarks

The compiler detected an ill-formed explicit instantiation.

## Example

The following example generates C3413:

```cpp
// C3413.cpp
template
class MyClass {};   // C3413
```

Possible resolution:

```cpp
// C3413b.cpp
// compile with: /c
template <class T>
class MyClass {};

template <>
class MyClass<int> {};
```