# Compiler Warning (level 4) C4295

> '*array*' : array is too small to include a terminating null character

## Remarks

An array was initialized but the last character in the array is not a null; accessing the array as a string may produce unexpected results.

## Example

The following example generates C4295. To fix this issue, you could declare the array size larger, to hold a terminating null from the initializer string, or you could use an array initializer list to make the intent clear that this is an array of **`char`**, not a null-terminated string.

```C
// C4295.c
// compile with: /W4

int main() {
   char a[3] = "abc";           // C4295
   char b[3] = {'d', 'e', 'f'}; // No warning
   a[0] = b[2];
}
```