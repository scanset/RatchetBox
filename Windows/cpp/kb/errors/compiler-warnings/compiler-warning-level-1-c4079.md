# Compiler Warning (level 1) C4079

> unexpected token 'token'

## Remarks

An unexpected separator token occurs in a pragma argument list. The remainder of the pragma was ignored.

## Example

The following example generates C4079:

```cpp
// C4079.cpp
// compile with: /W1
#pragma warning(disable : 4081)
#pragma pack(c,16)   // C4079

int main() {
}
```