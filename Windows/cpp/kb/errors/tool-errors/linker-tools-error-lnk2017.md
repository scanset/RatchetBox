# Linker Tools Error LNK2017

> 'symbol' relocation to 'segment' invalid without /LARGEADDRESSAWARE:NO

## Remarks

You are trying to build a 64-bit image with 32-bit addresses. To do this, you must:

- Use a fixed load address.

- Restrict the image to 3 GB.

- Specify [/largeaddressaware:no](../../build/reference/largeaddressaware-handle-large-addresses.md).