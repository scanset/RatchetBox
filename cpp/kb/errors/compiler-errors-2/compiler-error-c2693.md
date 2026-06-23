# Compiler Error C2693

> 'operator' : illegal comparison for references to a managed or WinRT array

## Remarks

You cannot test a managed or WinRT array for any kind of inequality. For example, you can test to see if managed arrays are equal but you cannot test to see if one array is greater or less than another array.