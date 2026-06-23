# Installer.ComponentPathEx property

This property returns a [**RecordList**](recordlist-object.md) object that gives the full path of a specified installed component. This property calls [**MsiGetComponentPathEx**](/windows/desktop/api/Msi/nf-msi-msigetcomponentpathexa).

**[Windows Installer 4.5 or earlier](not-supported-in-windows-installer-4-5.md):** Not supported. This property is available beginning with Windows Installer 5.0.

This property is read-only.

## Syntax


```JScript
propVal = Installer.ComponentPathEx
```



## Property value

## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------------------------|
| Version<br/> | Windows Installer 5.0 on Windows Server 2012, Windows 8, Windows Server 2008 R2 or Windows 7<br/> |
| DLL<br/>     | <dl> <dt>Msi.dll</dt> </dl>                      |
| IID<br/>     | IID\_IInstaller is defined as 000C1090-0000-0000-C000-000000000046<br/>                           |



## See also

<dl> <dt>

[**MsiGetComponentPathEx**](/windows/desktop/api/Msi/nf-msi-msigetcomponentpathexa)
</dt> </dl>

 

 



