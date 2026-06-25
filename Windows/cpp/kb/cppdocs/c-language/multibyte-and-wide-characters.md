# Multibyte and Wide Characters

A multibyte character is a character composed of sequences of one or more bytes. Each byte sequence represents a single character in the extended character set. Multibyte characters are used in character sets such as Kanji.

Wide characters are multilingual character codes that are always 16 bits wide. The type for character constants is **`char`**; for wide characters, the type is **`wchar_t`**. Since wide characters are always a fixed size, using wide characters simplifies programming with international character sets.

The wide-character-string literal `L"hello"` becomes an array of six integers of type **`wchar_t`**.

```
{L'h', L'e', L'l', L'l', L'o', 0}
```

The Unicode specification is the specification for wide characters. The run-time library routines for translating between multibyte and wide characters include `mbstowcs`, `mbtowc`, `wcstombs`, and `wctomb`.

## See also

[C Identifiers](../c-language/c-identifiers.md)