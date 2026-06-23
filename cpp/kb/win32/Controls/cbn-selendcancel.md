# CBN\_SELENDCANCEL notification code

Sent when the user selects an item, but then selects another control or closes the dialog box. It indicates the user's initial selection is to be ignored. The parent window of the combo box receives this notification code through the [**WM\_COMMAND**](/windows/desktop/menurc/wm-command) message.


```C++
CBN_SELENDCANCEL

    WPARAM wParam;
    LPARAM lParam; 
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) contains the control identifier of the combo box. The [**HIWORD**](../winmsg/hiword.md) specifies the notification code.

</dd> <dt>

*lParam* 
</dt> <dd>

Handle to the combo box.

</dd> </dl>

## Remarks

In a combo box with the [**CBS\_SIMPLE**](combo-box-styles.md) style, the CBN\_SELENDCANCEL notification code is not sent. The [CBN\_SELENDOK](cbn-selendok.md) notification code is sent immediately before every [CBN\_SELCHANGE](cbn-selchange.md) notification code.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[CBN\_SELCHANGE](cbn-selchange.md)
</dt> <dt>

[CBN\_SELENDOK](cbn-selendok.md)
</dt> <dt>

**Other Resources**
</dt> <dt>

[**HIWORD**](../winmsg/hiword.md)
</dt> <dt>

[**LOWORD**](../winmsg/loword.md)
</dt> <dt>

[**WM\_COMMAND**](/windows/desktop/menurc/wm-command)
</dt> </dl>

**Header:** Winuser.h
