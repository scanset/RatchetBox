# D1105: Threading Violation

A rental threaded interface \[*interface*\] was simultaneously accessed from multiple threads.

## Placeholders

<dl> <dt>

<span id="interface"></span><span id="INTERFACE"></span>*interface*
</dt> <dd>

The address of the interface that was accessed by multiple threads.

</dd> </dl> 




 

## Possible Causes

Using an object instance from the same single-threaded factory from two different threads.

 

 