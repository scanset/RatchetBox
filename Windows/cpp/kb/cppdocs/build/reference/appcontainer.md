# /APPCONTAINER

Marks an executable that must run in an app container—for example, a Microsoft Store or Universal Windows app.

```
/APPCONTAINER[:NO]
```

## Remarks

An executable that has the **/APPCONTAINER** option set can only be run in an app container, which is the process-isolation environment introduced in Windows 8. For Microsoft Store and Universal Windows apps, this option must be set.

## See also

[EDITBIN Options](editbin-options.md)<br/>
[What's a Universal Windows App?](/windows/uwp/get-started/universal-application-platform-guide)