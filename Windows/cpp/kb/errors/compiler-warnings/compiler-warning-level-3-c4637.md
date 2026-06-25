# Compiler Warning (level 3) C4637

> XML document comment target: \<include> tag discarded.  reason

## Remarks

The syntax of an [\<include>](../../build/reference/include-visual-cpp.md) tag was not correct.

## Example

The following example generates C4637:

```cpp
// C4637.cpp
// compile with: /clr /doc /LD /W3
using namespace System;

/// Text for class MyClass.
public ref class MyClass {
public:
   /// <include file="c:\davedata\jtest\xml_include.doc"/>
   // Try the following line instead:
   // /// <include file='xml_include.doc' path='MyDocs/MyMembers/*' />
   void MyMethod() {
   }
};   // C4637
```