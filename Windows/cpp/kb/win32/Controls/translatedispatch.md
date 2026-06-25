# TranslateDispatch callback function

\[*TranslateDispatch* is available for use in the operating systems specified in the Requirements section. It may be altered or unavailable in subsequent versions.\]

Used by the client of the [**DoReaderMode**](doreadermode.md) function to intercept and explicitly handle any windows messages targeted for the scrolling area of the reader mode window. This is an application-defined callback function.

## Syntax


```C++
BOOL CALLBACK TranslateDispatch(
  _In_ const MSG *lpmsg
);
```



## Parameters

<dl> <dt>

*lpmsg* \[in\]
</dt> <dd>

Type: **const [**MSG**](/windows/win32/api/winuser/ns-winuser-msg)\***

A pointer to an [**MSG**](/windows/win32/api/winuser/ns-winuser-msg) structure that contains the intercepted message.

</dd> </dl>

## Return value

Type: **[**BOOL**](/windows/desktop/WinProg/windows-data-types)**

**TRUE** if the message was handled by this function; otherwise, **FALSE**. If **FALSE**, the message is handled by the default reader mode implementation. That implementation handles mouse movement and buttons as well as key presses.

## Examples

The following example outlines an implementation of this function.


```C++
BOOL CALLBACK
TranslateDispatchCallback(LPMSG lpmsg)
{
    BOOL fResult = FALSE;

    if (lpmsg->message == WM_KEYDOWN)
    {
        
        // Perform custom keyboard actions here.
        fResult = TRUE;
    }

    return fResult;
}
```



## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista, Windows Vista \[desktop apps only\]<br/> |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>          |



 
