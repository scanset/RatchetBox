# Compiler Error C2318

> no try block associated with this catch handler

## Remarks

A **`catch`** handler is defined but not preceded by a **`try`** block.

## Example

The following example generates C2318:

```cpp
// C2318.cpp
// compile with: /EHsc
#include <eh.h>
int main() {
   // no try block
   catch( int ) {}   // C2318
}
```

Possible resolution:

```cpp
// C2318b.cpp
// compile with: /EHsc
#include <eh.h>
int main() {
   try{}
   catch( int ) {}
}
```