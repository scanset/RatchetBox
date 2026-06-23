# Reserved words

The following words are reserved by the linker. These names can be used as arguments in [module-definition statements](module-definition-dot-def-files.md) only if the name is enclosed in double quotation marks ("").

:::row:::
   :::column span="":::
      **`APPLOADER`**<sup>1</sup>\
      **`BASE`**\
      **`CODE`**\
      **`CONFORMING`**\
      **`DATA`**\
      **`DESCRIPTION`**\
      **`DEV386`**\
      **`DISCARDABLE`**\
      **`DYNAMIC`**\
      **`EXECUTE-ONLY`**\
      **`EXECUTEONLY`**\
      **`EXECUTEREAD`**\
      **`EXETYPE`**\
      **`EXPORTS`**\
      **`FIXED`**<sup>1</sup>
   :::column-end:::
   :::column span="":::
      **`FUNCTIONS`**<sup>2</sup>\
      **`HEAPSIZE`**\
      **`IMPORTS`**\
      **`IMPURE`**<sup>1</sup>\
      **`INCLUDE`**<sup>2</sup>\
      **`INITINSTANCE`**<sup>2</sup>\
      **`IOPL`**\
      **`LIBRARY`**<sup>1</sup>\
      **`LOADONCALL`**<sup>1</sup>\
      **`LONGNAMES`**<sup>2</sup>\
      **`MOVABLE`**<sup>1</sup>\
      **`MOVEABLE`**<sup>1</sup>\
      **`MULTIPLE`**\
      **`NAME`**\
      **`NEWFILES`**<sup>2</sup>
   :::column-end:::
   :::column span="":::
      **`NODATA`**<sup>1</sup>\
      **`NOIOPL`**<sup>1</sup>\
      **`NONAME`**\
      **`NONCONFORMING`**<sup>1</sup>\
      **`NONDISCARDABLE`**\
      **`NONE`**\
      **`NONSHARED`**\
      **`NOTWINDOWCOMPAT`**<sup>1</sup>\
      **`OBJECTS`**\
      **`OLD`**<sup>1</sup>\
      **`PRELOAD`**\
      **`PRIVATE`**\
      **`PROTMODE`**<sup>2</sup>\
      **`PURE`**<sup>1</sup>\
      **`READONLY`**
   :::column-end:::
   :::column span="":::
      **`READWRITE`**\
      **`REALMODE`**<sup>1</sup>\
      **`RESIDENT`**\
      **`RESIDENTNAME`**<sup>1</sup>\
      **`SECTIONS`**\
      **`SEGMENTS`**\
      **`SHARED`**\
      **`SINGLE`**\
      **`STACKSIZE`**\
      **`STUB`**\
      **`VERSION`**\
      **`WINDOWAPI`**\
      **`WINDOWCOMPAT`**\
      **`WINDOWS`**
   :::column-end:::
:::row-end:::

<sup>1</sup> The linker emits a warning ("ignored") when it encounters this term. However, the word is still reserved.

<sup>2</sup> The linker ignores this word but emits no warning.

## See also

- [MSVC linker reference](linking.md)
- [MSVC Linker Options](linker-options.md)