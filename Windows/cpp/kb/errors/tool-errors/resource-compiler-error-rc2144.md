# Resource Compiler Error RC2144

> PRIMARY LANGUAGE ID not a number

## Remarks

The PRIMARY LANGUAGE ID must be a hexadecimal language ID. See [Language and Country/Region Strings](../../c-runtime-library/locale-names-languages-and-country-region-strings.md) in the *Run-Time Library Reference* for a list of valid Language IDs.

This error can also occur if resources have been added and deleted from the .RC file using a tool. To fix this issue, open the .RC file in a text editor and clean up any unused resources manually.