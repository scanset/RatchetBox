# Reading Ranges

**ANSI 4.9.6.2** The interpretation of a dash (-) character that is neither the first nor the last character in the scanlist for % [ conversion in the `fscanf` function

The following line

```
fscanf( fileptr, "%[A-Z]", strptr);
```

reads any number of characters in the range A-Z into the string to which `strptr` points.

## See also

[Library Functions](../c-language/library-functions.md)