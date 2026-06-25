# BSCMAKE Warning BK4504

> file contains too many references; ignoring further references from this source

## Remarks

The .cpp file contains more than 64,000 symbol references. When BSCMAKE has encountered 64,000 references in a file, it ignores all further references.

To correct the problem, either split the file into two or more files, each of which has fewer than 64,000 symbol references, or use the `#pragma component(browser)` preprocessor directive to limit symbols that are generated for particular references. For more information, see [component](../../preprocessor/component.md).