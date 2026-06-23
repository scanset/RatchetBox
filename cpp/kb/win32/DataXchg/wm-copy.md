# WM\_COPY message

An application sends the **WM_COPY** message to an edit control or combo box to copy the current selection to the clipboard in [CF_TEXT](standard-clipboard-formats.md) format.

```C++
#define WM_COPY                         0x0301
```

## Parameters

*wParam*

This parameter is not used and must be zero.

*lParam*

This parameter is not used and must be zero.

## Return value

Always returns zero.

## Remarks

When sent to a combo box, the **WM_COPY** message is handled by its edit control. This message has no effect when sent to a combo box with the [CBS_DROPDOWNLIST](../controls/combo-box-styles.md) style.

## Requirements

| Requirement | Value |
|-------------|-------|
| Minimum supported client | Windows 2000 Professional \[desktop apps only\] |
| Minimum supported server | Windows 2000 Server \[desktop apps only\]       |
| Header                   | Winuser.h (include Windows.h)                   |

## Related content

[WM_CLEAR](wm-clear.md)

[WM_CUT](wm-cut.md)

[WM_PASTE](wm-paste.md)

[WM_UNDO](/windows/win32/Controls/wm-undo)

[Clipboard](clipboard.md)

**Header:** Winuser.h
