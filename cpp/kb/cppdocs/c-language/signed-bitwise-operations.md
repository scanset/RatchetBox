# Signed Bitwise Operations

**ANSI 3.3** The results of bitwise operations on signed integers

Bitwise operations on signed integers work the same as bitwise operations on unsigned integers. For example, `-16 & 99` can be expressed in binary as

```
  11111111 11110000
& 00000000 01100011
  _________________
  00000000 01100000
```

The result of the bitwise AND is 96.

## See also

[Integers](../c-language/integers.md)