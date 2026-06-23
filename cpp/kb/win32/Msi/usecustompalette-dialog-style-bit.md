# UseCustomPalette Dialog Style Bit

If this bit is set, the pictures on the dialog box are created with the custom palette (one per dialog received from the first control created). If the bit is not set, the pictures are rendered using a default palette.

Typically one would set this bit if the dialog contains a picture with a special palette, or several pictures sharing a custom palette. The bit should not be set if the dialog contains several pictures with different palettes. In this case, the default palette is most likely to give a satisfactory result for all pictures.

## Value



| Decimal | Hexadecimal | Constant                                  |
|---------|-------------|-------------------------------------------|
| 64      | 0x00000040  | **msidbDialogAttributesUseCustomPalette** |



 

 

 


