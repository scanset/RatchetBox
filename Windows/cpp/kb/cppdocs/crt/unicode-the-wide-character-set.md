# Unicode: The wide-character set

A wide character is a 2-byte multilingual character code. Any character in use in modern computing worldwide, including technical symbols and special publishing characters, can be represented according to the Unicode specification as one or more wide characters. Developed and maintained by a large consortium that includes Microsoft, the Unicode standard is now widely accepted.

A wide character is of type **`wchar_t`**. A wide-character string is represented as a **`wchar_t[]`** array. You point to the array with a `wchar_t*` pointer.

You can represent any ASCII character as a wide character by prefixing the letter `L`. For example, `L'\0'` is the terminating wide (16-bit) null character.

You can represent any ASCII string literal as a wide-character string literal by prefixing the letter `L`. For example, `L"Hello"`.

Generally, wide characters use more space in memory than multibyte characters. But wide characters are faster to process. Only one locale can be represented at a time in multibyte encoding. All character sets in the world are represented simultaneously by the Unicode representation.

## See also

[Internationalization](./internationalization.md)\
[Universal C runtime routines by category](./run-time-routines-by-category.md)