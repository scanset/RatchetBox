# FONT statement

Defines the font with which the system will draw text in the dialog box. The font must have been previously loaded; for example, by calling the [**LoadResource**](/windows/win32/api/libloaderapi/nf-libloaderapi-loadresource) function.

``` syntax
FONT pointsize, "typeface", weight, italic, charset
```

<dl> <dt>

<span id="pointsize"></span><span id="POINTSIZE"></span>*pointsize*
</dt> <dd>

The size of the font, in points.

</dd> <dt>

<span id="typeface"></span><span id="TYPEFACE"></span>*typeface*
</dt> <dd>

The name of the typeface. This parameter must be enclosed in quotes (").

</dd> <dt>

<span id="weight"></span><span id="WEIGHT"></span>*weight*
</dt> <dd>

The weight of the font in the range 0 through 1000. For example, 400 is normal and 700 is bold. If this value is 0, the default weight is used. For a list of predefined values, see the **FW\_\*** values defined in WinGDI.h.

</dd> <dt>

<span id="italic"></span><span id="ITALIC"></span>*italic*
</dt> <dd>

Indicates an italic font if set to TRUE.

</dd> <dt>

<span id="charset"></span><span id="CHARSET"></span>*charset*
</dt> <dd>

The character set. For a list of values, see the **lfCharSet** member of the [**LOGFONT**](/windows/win32/api/wingdi/ns-wingdi-logfonta) structure.

</dd> </dl>

## Examples

The following example demonstrates the use of the **FONT** statement:

``` syntax
FONT 12, "MS Shell Dlg"
```

## See also

<dl> <dt>

[**LoadResource**](/windows/win32/api/libloaderapi/nf-libloaderapi-loadresource)
</dt> </dl>

 

 