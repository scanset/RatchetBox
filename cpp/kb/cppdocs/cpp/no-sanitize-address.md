# `no_sanitize_address`

**Microsoft Specific**

The **`__declspec(no_sanitize_address)`** specifier tells the compiler to disable the address sanitizer on functions, local variables, or global variables. This specifier is used in conjunction with [AddressSanitizer](../sanitizers/asan.md).

> [!NOTE]
> **`__declspec(no_sanitize_address)`** disables _compiler_ behavior, not *runtime* behavior.

## Example

See the [AddressSanitizer build reference](../sanitizers/asan-building.md#__declspecno_sanitize_address) for examples.

**END Microsoft Specific**

## See also

[`__declspec`](../cpp/declspec.md)\
[Keywords](../cpp/keywords-cpp.md)\
[AddressSanitizer](../sanitizers/asan.md)