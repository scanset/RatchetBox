# C Character Constants

A "character constant" is formed by enclosing a single character from the representable character set within single quotation marks (**' '**). Character constants are used to represent characters in the [execution character set](../c-language/execution-character-set.md).

## Syntax

*`character-constant`*:\
&emsp;**`'`** *`c-char-sequence`* **`'`**\
&emsp;**`L'`** *`c-char-sequence`* **`'`**

*`c-char-sequence`*:\
&emsp;*`c-char`*\
&emsp;*`c-char-sequence`* *`c-char`*

*`c-char`*:\
&emsp;Any member of the source character set except the single quotation mark (**`'`**), backslash (**`\`**), or newline character\
&emsp;*`escape-sequence`*

*`escape-sequence`*:\
&emsp;*`simple-escape-sequence`*\
&emsp;*`octal-escape-sequence`*\
&emsp;*`hexadecimal-escape-sequence`*

*`simple-escape-sequence`*: one of\
&emsp;**`\a`** **`\b`** **`\f`** **`\n`** **`\r`** **`\t`** **`\v`**\
&emsp;**`\'`** **`\"`** **`\\`** **`\?`**

*`octal-escape-sequence`*:\
&emsp;**`\`** *`octal-digit`*\
&emsp;**`\`** *`octal-digit`* *`octal-digit`*\
&emsp;**`\`** *`octal-digit`* *`octal-digit`* *`octal-digit`*

*`hexadecimal-escape-sequence`*:\
&emsp;**`\x`**  *`hexadecimal-digit`*\
&emsp;*`hexadecimal-escape-sequence`* *`hexadecimal-digit`*

## See also

[C Constants](../c-language/c-constants.md)