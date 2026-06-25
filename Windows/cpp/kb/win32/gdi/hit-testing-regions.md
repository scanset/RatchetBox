# Hit Testing Regions

An application performs hit testing on regions to determine the coordinates of the current cursor position. Then it passes these coordinates as well as a handle identifying the region to the [**PtInRegion**](/windows/desktop/api/Wingdi/nf-wingdi-ptinregion) function. The cursor coordinates can be retrieved by processing the various mouse messages, such as [**WM\_LBUTTONDOWN**](../inputdev/wm-lbuttondown.md) , [**WM\_LBUTTONUP**](../inputdev/wm-lbuttonup.md) , [**WM\_RBUTTONDOWN**](../inputdev/wm-rbuttondown.md) , and [**WM\_RBUTTONUP**](../inputdev/wm-rbuttonup.md). The return value for PtInRegion indicates whether the cursor position is within the given region.

 

 