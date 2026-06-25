# PSM\_INDEXTOPAGE message

Takes the index of a property sheet page and returns its HPROPSHEETPAGE handle. You can send this message explicitly or use the [**PropSheet\_IndexToPage**](/windows/desktop/api/Prsht/nf-prsht-propsheet_indextopage) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Zero-based index of the page.

</dd> <dt>

*lParam* 
</dt> <dd>

Must be zero.

</dd> </dl>

## Return value

Returns the HPROPSHEETPAGE handle of the property sheet page specified by *wParam* if successful. Otherwise, it returns zero.

## Requirements



| Requirement | Value |
|-------------------------------------|------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                     |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                               |
| Header<br/>                   | <dl> <dt>Prsht.h</dt> </dl> |

**Header:** Prsht.h
