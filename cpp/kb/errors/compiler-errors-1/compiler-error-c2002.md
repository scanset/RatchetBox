# Compiler Error C2002

> expected an ordinary string literal

## Remarks

The multibyte-character constant is not valid.

### To fix by checking the following possible causes

1. The wide-character constant contains more bytes than expected.

1. The standard header STDDEF.h is not included.

1. Wide characters cannot be concatenated with ordinary string literals.

1. A wide-character constant must be preceded by the character 'L':

    ```
    L'mbconst'
    ```

1. For Microsoft C++, the text arguments of a preprocessor directive must be ASCII. For example, the directive, `#pragma message(L"string")`, is not valid.