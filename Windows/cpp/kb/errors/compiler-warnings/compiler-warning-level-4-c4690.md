# Compiler Warning (level 4) C4690

> \[ emitidl( pop ) ] : more pops than pushes

## Remarks

The [emitidl](../../windows/attributes/emitidl.md) attribute was popped one more time that it was pushed.

## Example

The following example generates C4690. To fix this issue, make sure the attribute is popped exactly as many times as it is pushed.

```cpp
// C4690.cpp
// compile with: /c /W4
[emitidl(pop)];   // C4690
class x {};
```