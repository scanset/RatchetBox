# Compiler Error C2026

> string too big, trailing characters truncated

## Remarks

The string was longer than the limit of 16380 single-byte characters.

Before adjacent strings get concatenated, a string can't be longer than 16380 single-byte characters.

A Unicode string of about one half this length would also generate this error.

## Example

If you have a string defined as follows, it generates C2026:

```C
char sz[] =
"\
imagine a really, really \
long string here\
";
```

You could break it up as follows:

```C
char sz[] =
"\
imagine a really, really "
"long string here\
";
```

You may want to store exceptionally large string literals (32K or more) in a custom resource or an external file. For more information, see [To create a new custom or data resource](../../windows/binary-editor.md#to-create-a-new-custom-or-data-resource).