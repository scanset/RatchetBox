# HDN\_ITEMDBLCLICK notification code

Notifies a header control's parent window that the user double-clicked the control. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message. Only header controls that are set to the [**HDS\_BUTTONS**](header-control-styles.md) style send this notification code.


```C++
HDN_ITEMDBLCLICK

    pNMHeader = (LPNMHEADER) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to an [**NMHEADER**](/windows/win32/api/commctrl/ns-commctrl-nmheadera) structure that contains information about this notification code.

</dd> </dl>

## Return value

No return value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **HDN\_ITEMDBLCLICKW** (Unicode) and **HDN\_ITEMDBLCLICKA** (ANSI)<br/>         |

**Header:** Commctrl.h
