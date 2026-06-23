# `TZNAME_MAX`

**Obsolete**. The maximum permissible string length for a time zone name variable. This macro was defined in \<limits.h> in Visual Studio 2012 and earlier versions. It isn't defined in Visual Studio 2013 and later versions. To get the length required to hold the current time zone name, use [`_get_tzname`](./reference/get-tzname.md).

## Syntax

```C
#include <limits.h>
```

## See also

[Environmental constants](./environmental-constants.md)\
[Global constants](./global-constants.md)\
[`_get_tzname`](./reference/get-tzname.md)