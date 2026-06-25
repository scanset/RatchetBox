# EN\_SEARCHWEB notification code

Sent after an edit control performed a web search when the "Search the web" feature is enabled, see [EM_ENABLESEARCHWEB](em-enablesearchweb.md). The parent window of the edit control receives this notification code through a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
EN_SEARCHWEB

    WPARAM wParam;
    LPARAM lParam;
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Handle to the edit control.

</dd> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**NMSEARCHWEB**](/windows/desktop/api/Commctrl/ns-commctrl-nmsearchweb) structure.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 10, 1809 \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2019 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>CommCtrl.h</dt> </dl> |



## See also

<dl> <dt>

**Reference**
</dt> <dt>

[**EM\_ENABLESEARCHWEB**](em-enablesearchweb.md)
</dt> <dt>

**Other Resources**
</dt> <dt>

[**WM\_NOTIFY**](wm-notify.md)
</dt> </dl>

**Header:** CommCtrl.h
