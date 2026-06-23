# TB\_GETIDEALSIZE message

Gets the ideal size of the toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>A **BOOL** that indicates whether to retrieve the ideal height or width of the toolbar. Use **TRUE** to retrieve the ideal height, **FALSE** to retrieve the ideal width.</dd> <dt>

*lParam* 
</dt> <dd>

Pointer to a [**SIZE**](/windows/win32/api/windef/ns-windef-size) structure that receives the height or width at which all buttons would be displayed. If *wParam* is **TRUE**, only the **cy** member (height) is valid. If *wParam* is **FALSE**, only the **cx** member (width) is valid.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
