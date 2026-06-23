# Compiler Error C2505

> 'symbol' : '__declspec(modifer)' can only be applied to declarations or definitions of global objects or static data members

## Remarks

A **`__declspec`** modifier that is designed to only be used at global scope was used in a function.

For more information, see [appdomain](../../cpp/appdomain.md) and [process](../../cpp/process.md).

## Example

The following example generates C2505:

```cpp
// C2505.cpp
// compile with: /clr

// OK
__declspec(process) int ii;
__declspec(appdomain) int jj;

int main() {
   __declspec(process) int i;   // C2505
   __declspec(appdomain) int j;   // C2505
}
```