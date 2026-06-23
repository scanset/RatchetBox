# TTM\_GETTEXT message

Retrieves the information a tooltip control maintains about a tool.

## Parameters

*wParam* 

The number of **TCHARs**, including the terminating **NULL**, to copy to the buffer pointed to by **lpszText**.

*lParam* 

Pointer to a [**TOOLINFO**](/windows/win32/api/commctrl/ns-commctrl-tttoolinfoa) structure. Set the **cbSize** member of this structure to `sizeof(TOOLINFO)` before sending this message. Set the **hwnd** and **uId** members to identify the tool for which to retrieve information. Allocate a buffer of size specified by *wParam*. Set the **lpszText** member to point to the buffer to receive the tool text.

## Return value

No return value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |
| Unicode and ANSI names<br/>   | **TTM\_GETTEXTW** (Unicode) and **TTM\_GETTEXTA** (ANSI)<br/>                   |

**Header:** Commctrl.h
