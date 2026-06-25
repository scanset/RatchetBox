# Compiler Error C3251

> cannot invoke base class method on a value type instance

## Remarks

The following error occurs because `GetClass` is a member of `Microsoft.Runtime.Object`, not of `Microsoft.Runtime.Integer4`.

This error is obsolete in Visual Studio 2022 and later versions.