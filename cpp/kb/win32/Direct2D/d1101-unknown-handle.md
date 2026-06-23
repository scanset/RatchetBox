# D1101: Unknown Handle

An interface \[*interface*\] not allocated by this DLL was passed to it.

## Placeholders

<dl> <dt>

<span id="interface"></span><span id="INTERFACE"></span>*interface*
</dt> <dd>

The address of the interface.

</dd> </dl> 




 

## Possible Causes

Invalid resource usage. The resource created outside of Direct2D is used with a Direct2D factory, or the resources created on one factory was used with a resource created by another factory.

 

 