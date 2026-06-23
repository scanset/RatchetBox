# TVN\_ITEMCHANGED notification code

Notifies a tree-view control's parent window that item attributes have changed. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TVN_ITEMCHANGED
        
    pnm = (NMTVITEMCHANGE *) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**NMTVITEMCHANGE**](/windows/win32/api/commctrl/ns-commctrl-nmtvitemchange) structure describing the item that changed. The **uChanged** member is set to TVIF\_STATE.

</dd> </dl>

## Return value

Returns **FALSE** to accept the change, or **TRUE** to prevent the change.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **TVN\_ITEMCHANGEDW** (Unicode) and **TVN\_ITEMCHANGEDA** (ANSI)<br/>           |



## See also

<dl> <dt>

[TVN\_ITEMCHANGING](tvn-itemchanging.md)
</dt> </dl>

**Header:** Commctrl.h
