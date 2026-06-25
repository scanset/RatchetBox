# ProductID property

The **ProductID** property is set to the full **ProductID** after a successful validation.

This value is displayed by the UI and used by the [RegisterProduct action](registerproduct-action.md).

Following a successful validation, this property is set by the [ValidateProductID action](validateproductid-action.md) or the [ValidateProductID ControlEvent](validateproductid-controlevent.md).

Note that the particular sample user interface provided with the SDK as Uisample.msi requires a value for **ProductID**. If you use this UI, but do not want to use **ProductID** to validate product identifiers, then set the **ProductID** property to "none" in the [Property table](property-table.md).

## Requirements



| Requirement | Value |
|--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Version<br/> | Windows Installer 5.0 on Windows Server 2012, Windows 8, Windows Server 2008 R2 or Windows 7. Windows Installer 4.0 or Windows Installer 4.5 on Windows Server 2008 or Windows Vista. Windows Installer on Windows Server 2003 or Windows XP. See the [Windows Installer Run-Time Requirements](windows-installer-portal.md) for information about the minimum Windows service pack that is required by a Windows Installer version.<br/> |



## See also

<dl> <dt>

[Properties](properties.md)
</dt> </dl>

 

 



