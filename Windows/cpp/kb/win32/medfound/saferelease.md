# SafeRelease


Many of the code examples in this documentation use the following function to release COM interface pointers.


```C++
template <class T> void SafeRelease(T **ppT)
{
    if (*ppT)
    {
        (*ppT)->Release();
        *ppT = NULL;
    }
}
```



> [!Note]  
> This function is not defined in an SDK header. To use this function, you must define it in your own code.

 

This function releases the pointer *ppT* and sets it equal to **NULL**.

Another option is to use a smart pointer class, such as **CComPtr**, which is defined in the Active Template Library (ATL).

## Related topics

<dl> <dt>

[About Media Foundation](about-the-media-foundation-sdk.md)
</dt> <dt>

[**IUnknown::Release**](/windows/win32/api/unknwn/nf-unknwn-iunknown-release)
</dt> </dl>

 

 