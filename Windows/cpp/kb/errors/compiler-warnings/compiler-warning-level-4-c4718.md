# Compiler Warning (level 4) C4718

> 'function call' : recursive call has no side effects, deleting

## Remarks

A function contains a recursive call, but otherwise has no side effects. A call to this function is being deleted. The correctness of the program is not affected, but the behavior is. Whereas leaving the call in could result in a runtime stack overflow exception, deleting the call removes that possibility.