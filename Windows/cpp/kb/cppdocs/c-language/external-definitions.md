# External Definitions

*`translation-unit`*:\
&emsp;*`external-declaration`* \
&emsp;*`translation-unit`* *`external-declaration`*

*`external-declaration`*: /\* Allowed only at external (file) scope \*/\
&emsp;*`function-definition`*\
&emsp;*`declaration`*

*`function-definition`*: /\* This declarator is the function declarator \*/\
&emsp;*`declaration-specifiers`*<sub>opt</sub> *`declarator`* *`declaration-list`*<sub>opt</sub> *`compound-statement`*

## See also

[Phrase Structure Grammar](../c-language/phrase-structure-grammar.md)