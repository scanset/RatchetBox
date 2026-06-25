# Compiler Error C2317

> 'try' block starting on line 'number' has no catch handlers

## Remarks

A **`try`** block must have at least one catch handler.

## Example

The following example generates C2317:

```cpp
// C2317.cpp
// compile with: /EHsc
#include <eh.h>
int main() {
   try {
      throw "throw an exception";
   }
   // C2317, no catch handler
}
```

Possible resolution:

```cpp
// C2317b.cpp
// compile with: /EHsc
#include <eh.h>
int main() {
   try {
      throw "throw an exception";
   }
   catch(char*) {}
}
```