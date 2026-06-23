# EM\_GETELLIPSISMODE message

Retrieves the current ellipsis mode. When enabled, an ellipsis ( ) is displayed for text that doesn t fit in the display window. The ellipsis is only used when the control is not active. When active, scroll bars are used to reveal text that doesn t fit into the display window.


```C++
#define EM_GETELLIPSISMODE       (WM_USER + 305)
```



## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Not used; must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a DWORD which receives one of the following values.



| Value                                                                                                                                                         | Meaning                                        |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------|
| <span id="ELLIPSIS_NONE"></span><span id="ellipsis_none"></span><dl> <dt>**ELLIPSIS\_NONE**</dt> </dl> | No ellipsis is used.<br/>                |
| <span id="ELLIPSIS_END"></span><span id="ellipsis_end"></span><dl> <dt>**ELLIPSIS\_END**</dt> </dl>    | Ellipsis at the end (forced break).<br/> |
| <span id="ELLIPSIS_WORD"></span><span id="ellipsis_word"></span><dl> <dt>**ELLIPSIS\_WORD**</dt> </dl> | Ellipsis at the end (word break).<br/>   |



 

</dd> </dl>

## Return value

If wparam is 0 and lparam is not NULL, the return value equals TRUE; otherwise, the return value equals FALSE.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 8 \[desktop apps only\]<br/>                                            |
| Minimum supported server<br/> | Windows Server 2012 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |



## See also

<dl> <dt>

[**EM\_SETELLIPSISMODE**](em-setellipsismode.md)
</dt> <dt>

[**EM\_GETELLIPSISSTATE**](em-getellipsisstate.md)
</dt> </dl>

**Header:** Richedit.h
