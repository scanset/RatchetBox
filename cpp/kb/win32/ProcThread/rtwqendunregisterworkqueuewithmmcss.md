# RtwqEndUnregisterWorkQueueWithMMCSS function

Completes an asynchronous request to unregister a work queue with a Multimedia Class Scheduler Service (MMCSS) task.

## Syntax


```C++
HRESULT WINAPI RtwqEndUnregisterWorkQueueWithMMCSS(
    IMFAsyncResult  *pResult 
);
```



## Parameters

<dl> <dt>

*pResult* 
</dt> <dd>

Pointer to the [**IMFAsyncResult**](/windows/win32/api/mfobjects/nn-mfobjects-imfasyncresult) interface. Pass in the same pointer that your callback object received in the [**IRtwqAsyncCallback::Invoke**](/windows/win32/api/rtworkq/nf-rtworkq-irtwqasynccallback-invoke) method.

</dd> </dl>

## Return value

If this function succeeds, it returns **S\_OK**. Otherwise, it returns an **HRESULT** error code.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 8.1 \[desktop apps only\]<br/>                                           |
| Minimum supported server<br/> | Windows Server 2012 R2 \[desktop apps only\]<br/>                                |
| Header<br/>                   | <dl> <dt>None</dt> </dl>        |
| Library<br/>                  | <dl> <dt>Rtworkq.lib</dt> </dl> |
| DLL<br/>                      | <dl> <dt>RTWorkQ.dll</dt> </dl> |



 

 