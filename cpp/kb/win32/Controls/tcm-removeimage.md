# TCM\_REMOVEIMAGE message

Removes an image from a tab control's image list. You can send this message explicitly or by using the [**TabCtrl\_RemoveImage**](/windows/desktop/api/Commctrl/nf-commctrl-tabctrl_removeimage) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Index of the image to remove.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

No return value.

## Remarks

The tab control updates each tab's image index, so each tab remains associated with the same image as before. If a tab is using the image being removed, the tab will be set to have no image.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
