# AllowLockdownBrowse

Setting the value of this per-machine [system policy](system-policy.md) to "1" enables nonadministrative users to use a [Browse Dialog](browse-dialog.md) to locate sources of [*managed applications*](m-gly.md). Sources may include media, such as CD-ROM, URLs, and network locations. For more information, see [Source Resiliency](source-resiliency.md). The default on Windows Installer is that nonadministrative users cannot browse for new sources of managed applications. The only sources available are those that are already registered in the source list of the product. If this policy is set, a nonadministrative user may browse for new sources of assigned or published applications or applications being installed for all users. Setting AllowLockdownBrowse also enables nonadministrative users to run programs at LocalSystem privileges during an elevated installation.

The default setting is recommended to ensure a secure environment.

## Registry Key

**HKEY\_LOCAL\_MACHINE**\\**Software**\\**Policies**\\**Microsoft**\\**Windows**\\**Installer**

## Data Type

**REG\_DWORD**

## Remarks

Setting this policy also enables nonadministrative users to run arbitrary programs at LocalSystem privileges if they have a Windows Installer package that installs or launches those programs.

[DisableBrowse](disablebrowse.md) overrides AllowLockdownBrowse and prevents browsing even if AllowLockdownBrowse is set.

For information about the interaction of this policy with installation sources, see [Managing Installation Sources](managing-installation-sources.md).

## Related topics

<dl> <dt>

[Source Resiliency](source-resiliency.md)
</dt> <dt>

[AllowLockdownMedia](allowlockdownmedia.md)
</dt> </dl>

 

 


