# Compiler Error C2312

> 'exception1' : is caught by 'exception2' on line number

## Remarks

Two handlers catch the same exception type.

## Example

The following example generates C2312:

```cpp
// C2312.cpp
// compile with: /EHsc
#include <eh.h>
int main() {
    try {
        throw "ooops!";
    }
    catch( signed int ) {}
    catch( int ) {}   // C2312
}
```