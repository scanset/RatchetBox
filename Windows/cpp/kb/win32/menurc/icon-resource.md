# ICON resource

Defines a bitmap that defines the shape of the icon to be used for a given application or an animated icon.

``` syntax
nameID ICON filename
```

## Parameters

<dl> <dt>

<span id="nameID"></span><span id="nameid"></span><span id="NAMEID"></span>*nameID*
</dt> <dd>

Unique name or a 16-bit unsigned integer value identifying the resource.

</dd> <dt>

<span id="filename"></span><span id="FILENAME"></span>*filename*
</dt> <dd>

Name of the file that contains the resource. The name must be a valid file name; it must be a full path if the file is not in the current working directory. The path should be a quoted string.

</dd> </dl>

Certain attributes are also supported for backward compatibility. For more information, see [Common Resource Attributes](common-resource-attributes.md).

## Remarks

Icon and cursor resources can contain more than one image.

## Examples

The following example defines two icon resources:

``` syntax
desk1   ICON "desk.ico"
11      ICON "custom.ico"
```

## See also

<dl> <dt>

[Using Icons](./using-icons.md)
</dt> </dl>

 

 