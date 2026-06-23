# Unicode Support for Common Controls

This topic describes how to support Unicode for common control notifications.


For versions 5.80 and later of comctl32.dll, common controls notifications support both ANSI and Unicode formats on Windows 95 systems or later. The system determines which format to use by sending your window a [**WM\_NOTIFYFORMAT**](wm-notifyformat.md) message. To specify a format, return NFR\_ANSI for ANSI notifications or NFR\_UNICODE for Unicode notifications. If you do not handle this message, the system calls [**IsWindowUnicode**](/windows/desktop/api/winuser/nf-winuser-iswindowunicode) to determine the format. Since Windows 95 and Windows 98 always return **FALSE** to this function call, they use ANSI notifications by default.

## Related topics

<dl> <dt>

[About Common Controls](common-controls-intro.md)
</dt> </dl>

 

 