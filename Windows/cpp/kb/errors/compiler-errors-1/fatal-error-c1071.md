# Fatal Error C1071

> unexpected end of file found in comment

## Remarks

The compiler reached the end of the file while scanning a comment.

### To fix by checking the following possible causes

1. Missing comment terminator (*/).

1. Missing newline character after a comment on the last line of a source file.

## Example

The following example generates C1071:

```cpp
// C1071.cpp
int main() {
}

/* this comment is fine */
/* forgot the closing tag        // C1071
```