# Initializing Media Foundation

Before using any Microsoft Media Foundation objects or interfaces, you must call the [**MFStartup**](/windows/desktop/api/mfapi/nf-mfapi-mfstartup) function. Pass in the constant **MF\_VERSION**.


```C++
    hr = MFStartup(MF_VERSION);
```



The [**MFStartup**](/windows/desktop/api/mfapi/nf-mfapi-mfstartup) function initializes the Media Foundation platform. If **MFStartup** returns MF\_E\_BAD\_STARTUP\_VERSION, it means your application was compiled using a version of the Media Foundation headers that does not match the Media Foundation DLLs on your system.

For every call to [**MFStartup**](/windows/desktop/api/mfapi/nf-mfapi-mfstartup), your application must call [**MFShutdown**](/windows/desktop/api/mfapi/nf-mfapi-mfshutdown).


```C++
MFShutdown();
```



## Related topics

<dl> <dt>

[Media Foundation Architecture](media-foundation-architecture.md)
</dt> <dt>

[Media Foundation Platform APIs](media-foundation-platform-apis.md)
</dt> </dl>

 

 


