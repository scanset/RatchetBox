# NAME (C/C++)

Specifies a name for the main output file.

```
NAME [application][BASE=address]
```

## Remarks

An equivalent way to specify an output file name is with the [/OUT](out-output-file-name.md) linker option, and an equivalent way to set the base address is with the [/BASE](base-base-address.md) linker option. If both are specified, /OUT overrides **NAME**.

If you build a DLL, NAME will only affect the DLL name.

## See also

[Rules for Module-Definition Statements](rules-for-module-definition-statements.md)