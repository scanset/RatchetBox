# Compiler Error C3292

> the cli namespace cannot be reopened

## Remarks

The cli namespace cannot be declared in your code.  For more information, see [Platform, default, and cli Namespaces](../../extensions/platform-default-and-cli-namespaces-cpp-component-extensions.md).

## Example

The following example generates C3292.

```cpp
// C3292.cpp
// compile with: /clr /c
namespace cli {};   // C3292
```