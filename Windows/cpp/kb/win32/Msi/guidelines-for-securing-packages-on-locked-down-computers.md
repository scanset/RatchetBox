# Securing Packages on Locked-Down Computers

Adherence to the following guidelines when authoring a Windows Installer package that will be used on locked-down computers helps maintain a secure environment during installation:

-   Test your package for compatibility with the Windows Installer machine [System Policy](system-policy.md).
-   Make sure you package runs with all [user interface levels](user-interface-levels.md), none, basic, limited, and full.
-   Test your package on NTFS partitions, both with [*elevated*](e-gly.md) and non-elevated privileges.
-   Starting with Windows Installer 3.0, [User Account Control (UAC) Patching](user-account-control--uac--patching.md) enables non-administrator users to patch applications installed in the per-machine context. Test your patch package on Windows Vista and Windows XP for both installation by users with administrator access and by non-administrator users.

 

 


