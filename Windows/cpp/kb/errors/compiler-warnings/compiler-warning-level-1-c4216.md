# Compiler Warning (level 1) C4216

> nonstandard extension used : float long

## Remarks

The default Microsoft extensions (/Ze) treat **float long** as **`double`**. ANSI compatibility ([/Za](../../build/reference/za-ze-disable-language-extensions.md)) does not. Use **`double`** to maintain compatibility.

## Example

The following example generates C4216:

```cpp
// C4216.cpp
// compile with: /W1
float long a;   // C4216

// use the line below to resolve the warning
// double a;

int main() {
}
```