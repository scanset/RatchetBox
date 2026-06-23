# Compiler Error C2195

> 'identifier' : is a data segment

## Remarks

The `code_seg` pragma uses a segment name used with the `data_seg` pragma.

## Example

The following example generates C2195:

```cpp
// C2195.cpp
#pragma data_seg("MYDATA")
#pragma code_seg("MYDATA")   // C2195
#pragma code_seg("MYDATA2")   // OK
```