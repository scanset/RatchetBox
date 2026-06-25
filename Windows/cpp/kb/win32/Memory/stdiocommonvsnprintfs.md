# `__stdio_common_vsnprintf_s`

Prints a formatted list of arguments to a character array, with security checks and error handling.

## Syntax

```cpp
int __stdio_common_vsnprintf_s(
    unsigned __int64 const options,
    char*            const buffer,
    size_t           const buffer_count,
    size_t           const max_count,
    char const*      const format,
    _locale_t        const locale,
    va_list          const arglist
    )
```

## Parameters

*`options`*\
The options that modify the behavior of the function.

*`buffer`*\
The destination buffer where the formatted output is stored.

*`buffer_count`*\
The size of the destination buffer in bytes.

*`max_count`*\
The maximum size of the destination buffer in bytes.

*`format`*\
The format string that specifies how to format the output.

*`locale`*\
The locale to use when formatting the output.

*`arglist`*\
The variable argument list that contains the values to be formatted.

## Returns

Returns 0 if successful, or a nonzero value if an error occurs.

## Remarks

The function returns the number of characters written to the buffer, or a negative value if an error occurs. The function also ensures that the buffer is null-terminated, and that no buffer overflow occurs.

## Requirements

| Routine | Exported by |
|---|---|
| **`__stdio_common_vsnprintf_s`** | `<ucrtbase_enclave.dll>` |