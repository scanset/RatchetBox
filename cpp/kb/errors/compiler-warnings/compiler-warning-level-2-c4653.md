# Compiler Warning (level 2) C4653

> compiler option 'option' inconsistent with precompiled header; current command-line option ignored

## Remarks

An option specified with the Use Precompiled Headers ([/Yu](../../build/reference/yu-use-precompiled-header-file.md)) option was inconsistent with the options specified when the precompiled header was created. This compilation used the option specified when the precompiled header was created.

This warning can occur when a different value for the Pack Structures option ([/Zp](../../build/reference/zp-struct-member-alignment.md)) was specified during compilation of the precompiled header.