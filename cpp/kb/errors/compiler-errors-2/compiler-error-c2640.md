# Compiler Error C2640

> 'abstract declarator': __based modifier illegal on reference

## Remarks

The [**`__based`**](../../cpp/based-pointers-cpp.md) modifier can be used on pointers only.

## Example

The following example generates C2640:

```cpp
// C2640.cpp
int* ptr;

int main()
{
    int __based(ptr)& based_ref;   // C2640
    int __based(ptr)* based_ptr;   // OK
}
```