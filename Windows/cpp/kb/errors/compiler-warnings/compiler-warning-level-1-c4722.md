# Compiler Warning (level 1) C4722

> 'function' : destructor never returns, potential memory leak

## Remarks

The flow of control terminates in a destructor. The thread or the entire program will terminate and allocated resources may not be released.  Furthermore, if a destructor will be called for stack unwinding during exception processing, the behavior of executable is undefined.

To resolve, remove the function call that causes the destructor to not return.

## Example

The following example generates C4722:

```cpp
// C4722.cpp
// compile with: /O1 /W1 /c
#include <stdlib.h>
class C {
public:
   C();
   ~C() { exit(1); }   // C4722
};

extern void func (C*);

void Test(){
   C x;
   func(&x);
   // control will not leave Test because destructor will exit
}
```