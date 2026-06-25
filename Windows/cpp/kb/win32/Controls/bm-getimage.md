# BM\_GETIMAGE message

Retrieves a handle to the image (icon or bitmap) associated with the button.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The type of image to associate with the button. This parameter can be one of the following values.



| Value                                                                                                                                                      | Meaning              |
|------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------|
| <span id="IMAGE_BITMAP"></span><span id="image_bitmap"></span><dl> <dt>**IMAGE\_BITMAP**</dt> </dl> | A bitmap.<br/> |
| <span id="IMAGE_ICON"></span><span id="image_icon"></span><dl> <dt>**IMAGE\_ICON**</dt> </dl>       | An icon.<br/>  |



 

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used.

</dd> </dl>

## Return value

The return value is a handle to the image, if any; otherwise, it is **NULL**.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**BM\_SETIMAGE**](bm-setimage.md)
</dt> <dt>

**Conceptual**
</dt> <dt>

[Buttons](buttons.md)
</dt> </dl>

**Header:** Winuser.h
