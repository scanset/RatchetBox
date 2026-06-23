# SCROLLBAR control

Defines a scroll-bar control. The control is a rectangle that contains a scroll box and has direction arrows at both ends. The scroll-bar control sends a notification message to its parent whenever the user clicks the mouse in the control. The parent is responsible for updating the scroll-box position. Scroll-bar controls can be positioned anywhere in a window and used whenever needed to provide scrolling input.

``` syntax
SCROLLBAR id, x, y, width, height [, style [, extended-style]]
```

<dl> <dt>

<span id="style"></span><span id="STYLE"></span>*style*
</dt> <dd>

Zero or a combination of the following styles: **WS\_TABSTOP**, **WS\_GROUP**, and **WS\_DISABLED**.

In addition to these styles, the *style* parameter may contain a combination (or none) of the SCROLLBAR-class styles.

If you do not specify a style, the default style is **SBS\_HORZ**.

</dd> </dl>

For more information about the general syntax of a control statement, see [Common Control Parameters](common-control-parameters.md). Note that you cannot specify text for this control.

## Examples

The following example demonstrates the use of the **SCROLLBAR** statement:

``` syntax
#define IDC_SCROLLBARV                  1010

SCROLLBAR IDC_SCROLLBARV, 7, 55, 187, 44, SBS_VERT
```

## See also

<dl> <dt>

[Scroll Bars](../controls/about-scroll-bars.md)
</dt> </dl>

 

 