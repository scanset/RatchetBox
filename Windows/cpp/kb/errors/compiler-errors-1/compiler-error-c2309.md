# Compiler Error C2309

> catch handler expected a parenthesized exception declaration

## Remarks

A catch handler has no parenthesized type.

## Example

The following example generates C2309:

```cpp
// C2309.cpp
// compile with: /EHsc
#include <eh.h>
class C {};
int main() {
   try {
      throw "ooops!";
   }
   catch C {}   // C2309
   // try the following line instead
   // catch( C ) {}
}
```