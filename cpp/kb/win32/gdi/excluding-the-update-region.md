# Excluding the Update Region

The [**ExcludeUpdateRgn**](/windows/desktop/api/Winuser/nf-winuser-excludeupdatergn) function excludes the update region from the clipping region for the display device context. This function is useful when drawing in a window other than when a WM\_PAINT message is processing. It prevents drawing in the areas that will be updated during the next WM\_PAINT message.

 

 


