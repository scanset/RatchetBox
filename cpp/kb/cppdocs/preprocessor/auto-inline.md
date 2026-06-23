# `auto_inline` pragma

Excludes any functions defined within the range where **`off`** is specified from being considered as candidates for automatic inline expansion.

## Syntax

> **`#pragma auto_inline(`** [ { **`on`** | **`off`** } ] **`)`**

## Remarks

To use the **`auto_inline`** pragma, place it before and immediately after, not inside, a function definition. The pragma takes effect as soon as the first function definition after the pragma is seen.

## See also

[Pragma directives and the `__pragma` and `_Pragma` keywords](./pragma-directives-and-the-pragma-keyword.md)