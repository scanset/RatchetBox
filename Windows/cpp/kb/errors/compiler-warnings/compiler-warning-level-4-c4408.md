# Compiler Warning (level 4) C4408

> anonymousstruct or union did not declare any data members

## Remarks

An anonymous struct or union must have at least one data member.

## Example

The following example generates C4408:

```cpp
// C4408.cpp
// compile with: /W4 /LD
static union
{
   // int i;
};
// a named union can have no data members
// } MyUnion;
```