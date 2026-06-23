# D1104: Possible Leak

The factory \[*factory*\] was released but the interface \[*interface*\] created from it is still alive. While it is valid to release resources after releasing the factory, this condition could be indicative of a memory leak.

## Placeholders

<dl> <dt>

<span id="factory"></span><span id="FACTORY"></span>*factory*
</dt> <dd>

The address of the factory that was released.

</dd> <dt>

<span id="interface"></span><span id="INTERFACE"></span>*interface*
</dt> <dd>

The address of the interface that was created on the *factory*.

</dd> </dl> 

| &nbsp;      |    &nbsp;   |
|-------------|-------------|
| Error Level | Information |



 

## Possible Causes

The factory was released but the interface created from it is still alive.

 

 