# BCN\_HOTITEMCHANGE notification code

Notifies the button control owner that the mouse is entering or leaving the client area of the button control. The button control sends this notification code in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
BCN_HOTITEMCHANGE

    pnmbchotitem = (NMBCHOTITEM*) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**NMBCHOTITEM**](/windows/win32/api/commctrl/ns-commctrl-nmbchotitem) structure.

</dd> </dl>

## Return value

This message does not return a value.

## Remarks

> [!Note]  
> To use this notification code, you must provide a manifest specifying Comclt32.dll version 6.0. For more information on manifests, see [Enabling Visual Styles](cookbook-overview.md).

 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
