# CBEN\_ENDEDIT notification code

Sent when the user has concluded an operation within the edit box or has selected an item from the control's drop-down list. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
CBEN_ENDEDIT

    pnmEditInfo = (PNMCBEENDEDIT) lParam;
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to an [**NMCBEENDEDIT**](/windows/desktop/api/Commctrl/ns-commctrl-nmcbeendedita) structure that contains information about how the user concluded the edit operation.

</dd> </dl>

## Return value

**FALSE** to accept the notification code and allow the control to display the selected item; otherwise, **TRUE**.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **CBEN\_ENDEDITW** (Unicode) and **CBEN\_ENDEDITA** (ANSI)<br/>                 |



## See also

<dl> <dt>

[About ComboBoxEx Controls](comboboxex-controls.md)
</dt> </dl>

**Header:** Commctrl.h
