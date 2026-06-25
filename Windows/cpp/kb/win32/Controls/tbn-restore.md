# TBN\_RESTORE notification code

Notifies a toolbar's parent window that a toolbar is in the process of being restored. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TBN_RESTORE 

    lpnmtb = (LPNMTBRESTORE) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMTBRESTORE**](/windows/win32/api/commctrl/ns-commctrl-nmtbrestore) structure.

</dd> </dl>

## Return value

The application should return zero in response to the first **TBN\_RESTORE** notification code received at the start of the restore process to continue restoring the button information. If the application returns a nonzero value, the restore process is canceled.

## Remarks

The application will receive this notification code once at the start of the restore process and once for each button. This notification code gives you an opportunity to extract the information from the data stream that you saved previously. If you haven't saved any information, ignore the notification code. See [Toolbar Customization](toolbar-controls-overview.md) for a more detailed discussion of how to handle **TBN\_RESTORE**.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
