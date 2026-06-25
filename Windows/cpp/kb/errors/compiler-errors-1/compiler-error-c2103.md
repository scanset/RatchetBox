# Compiler Error C2103

> '&' on register variable

## Remarks

You cannot take the address of a register.

## Example

The following example generates C2103:

```c
// C2103.c
int main(void)
{
    register int x = 1;
    int* ptr = &x;   // C2103
}
```

> [!NOTE]
> This error applies to C code.