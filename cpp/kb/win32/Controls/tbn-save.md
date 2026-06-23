# TBN\_SAVE notification code

Notifies a toolbar's parent window that a toolbar is in the process of being saved. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TBN_SAVE 

    lpnmtb = (LPNMTBSAVE) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMTBSAVE**](/windows/win32/api/commctrl/ns-commctrl-nmtbsave) structure.

</dd> </dl>

## Return value

No return value.

## Remarks

The application will receive this notification code once at the start of the save process and once for each button. This notification code gives you an opportunity to add your own information to that saved by the Shell. If you do not wish to add information, ignore the notification code. See [Toolbar Customization](toolbar-controls-overview.md) for a more detailed discussion of how to handle TBN\_SAVE.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[TBN\_RESTORE](tbn-restore.md)
</dt> </dl>

**Header:** Commctrl.h
