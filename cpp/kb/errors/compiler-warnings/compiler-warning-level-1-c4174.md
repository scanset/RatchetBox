# Compiler Warning (level 1) C4174

> 'name' : not available as a #pragma component

## Example

The following example generates C4174:

```cpp
// C4174.cpp
// compile with: /W1
#pragma component(info)  // C4174; unknown
#pragma component(browser, off)  // turn off browse info
int main()
{
}
```