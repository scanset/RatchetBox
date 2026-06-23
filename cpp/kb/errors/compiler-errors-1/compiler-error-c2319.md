# Compiler Error C2319

> 'try/catch' must be followed by a compound statement. Missing '{'

## Remarks

A **`try`** or **`catch`** block is not found following the **`try`** or **`catch`** statement. The block must be enclosed in curly braces.

## Example

The following example generates C2319:

```cpp
// C2319.cpp
// compile with: /EHsc
#include <eh.h>
class C {};
int main() {
   try {
      throw "ooops!";
   }
   catch( C ) ;    // C2319
   // try the following line instead
   // catch( C ) {}
}
```