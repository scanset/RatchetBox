# RBN\_AUTOBREAK message

Notifies a [rebar's](rebar-controls.md) parent that a break will appear in the bar. The parent determines whether to make the break. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
RBN_AUTOBREAK

    pnmRebarAutoBreak = (LPNMREBARAUTOBREAK) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**NMREBARAUTOBREAK**](/windows/win32/api/commctrl/ns-commctrl-nmrebarautobreak) structure that contains information about the notification code.

</dd> </dl>

## Return value

The return value for this notification is not used.

## Remarks

The value in the **fAutoBreak** member of the [**NMREBARAUTOBREAK**](/windows/win32/api/commctrl/ns-commctrl-nmrebarautobreak) structure indicates whether a break should occur in the rebar.

To use this notification code, specify Comctl32.dll version 6 in the manifest. For more information on manifests, see [Enabling Visual Styles](cookbook-overview.md).

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
