# TBN\_DRAGOUT notification code

Sent by a toolbar control when the user clicks a button and then moves the cursor off the button. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TBN_DRAGOUT

    lpnmtb = (LPNMTOOLBAR) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMTOOLBAR**](/windows/win32/api/commctrl/ns-commctrl-nmtoolbara) structure that contains information about this notification code. For this notification code, only the **hdr** and **iItem** members of this structure are valid. The **iItem** member of this structure contains the command identifier of the button being dragged.

</dd> </dl>

## Return value

The return value is ignored.

## Remarks

This notification code allows an application to implement drag-and-drop functionality for toolbar buttons. When processing this notification code, the application will begin the drag-and-drop operation.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
