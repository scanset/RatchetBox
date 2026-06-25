# Compiler Error C3209

> 'class' : generic class must be a managed or WinRTclass

## Remarks

A generic class must be a managed class or a Windows Runtime class.

## Example

The following example generates C3209 and shows how to fix it:

```cpp
// C3209.cpp
// compile with: /clr
generic <class T>
class C {};   // C3209

// OK - ref class can be generic
generic <class T>
ref class D {};
```