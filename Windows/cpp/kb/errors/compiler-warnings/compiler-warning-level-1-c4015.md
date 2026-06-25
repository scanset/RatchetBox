# Compiler Warning (level 1) C4015

> 'identifier' : type of bit field must be integral

## Remarks

The bit field is not declared as an integer type. The compiler assumes the base type of the bit field to be unsigned. Bit fields must be declared as unsigned integer types.