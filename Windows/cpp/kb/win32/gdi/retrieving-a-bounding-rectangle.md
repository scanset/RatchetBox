# Retrieving a Bounding Rectangle

An application retrieves the dimensions of a region's bounding rectangle by calling the [**GetRgnBox**](/windows/desktop/api/Wingdi/nf-wingdi-getrgnbox) function. If the region is rectangular, **GetRgnBox** returns the dimensions of the region. If the region is elliptical, the function returns the dimensions of the smallest rectangle that can be drawn around the ellipse. The long sides of the rectangle are the same length as the ellipse's major axis, and the short sides of the rectangle are the same length as the ellipse's minor axis. If the region is polygonal, **GetRgnBox** returns the dimensions of the smallest rectangle that can be drawn around the entire polygon.

 

 


