# Charizing operator (#@)

**Microsoft Specific**

The charizing operator can be used only with arguments of macros. If `#@` precedes a formal parameter in the definition of the macro, the actual argument is enclosed in single quotation marks and treated as a character when the macro is expanded. For example:

```cpp
#define makechar(x)  #@x
```

causes the statement

```cpp
a = makechar(b);
```

to be expanded to

```cpp
a = 'b';
```

The single-quotation character (`'`) can't be used with the charizing operator.

**END Microsoft Specific**

## See also

[Preprocessor operators](../preprocessor/preprocessor-operators.md)