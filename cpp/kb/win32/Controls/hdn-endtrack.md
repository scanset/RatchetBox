# HDN\_ENDTRACK notification code

Notifies a header control's parent window that the user has finished dragging a divider. This notification code sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
HDN_ENDTRACK

    pNMHeader = (LPNMHEADER) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to an [**NMHEADER**](/windows/win32/api/commctrl/ns-commctrl-nmheadera) structure that contains information about the header control and the item whose divider was dragged.

</dd> </dl>

## Return value

No return value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **HDN\_ENDTRACKW** (Unicode) and **HDN\_ENDTRACKA** (ANSI)<br/>                 |

**Header:** Commctrl.h
