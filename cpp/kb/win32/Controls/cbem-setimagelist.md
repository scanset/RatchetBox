# CBEM\_SETIMAGELIST message

Sets an image list for a ComboBoxEx control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

A handle to the image list to be set for the control.

</dd> </dl>

## Return value

Returns the handle to the image list previously associated with the control, or returns **NULL** if no image list was previously set.

## Remarks

> [!IMPORTANT]
> The height of images in your image list might change the size requirements of the ComboBoxEx control. It is recommended that you resize the control after sending this message to ensure that it is displayed properly.

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
