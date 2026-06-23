# TCM\_SETIMAGELIST message

Assigns an image list to a tab control. You can send this message explicitly or by using the [**TabCtrl\_SetImageList**](/windows/desktop/api/Commctrl/nf-commctrl-tabctrl_setimagelist) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

Handle to the image list to assign to the tab control.

</dd> </dl>

## Return value

Returns the handle to the previous image list, or **NULL** if there is no previous image list.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
