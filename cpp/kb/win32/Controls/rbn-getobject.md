# RBN\_GETOBJECT notification code

Sent by a rebar control created with the [**RBS\_REGISTERDROP**](rebar-control-styles.md) style when an object is dragged over a band in the control. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
RBN_GETOBJECT

    lpnmon = (LPNMOBJECTNOTIFY) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to an [**NMOBJECTNOTIFY**](/windows/win32/api/commctrl/ns-commctrl-nmobjectnotify) structure that contains information about the band that the object is dragged over and also receives the data provided by the receiving application in response to this notification code.

</dd> </dl>

## Return value

The return value for this notification code must be zero.

## Remarks

To receive the RBN\_GETOBJECT notification code, initialize OLE with a call to [**OleInitialize**](/windows/desktop/api/ole2/nf-ole2-oleinitialize) or [**CoInitialize**](/windows/desktop/api/objbase/nf-objbase-coinitialize).

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
