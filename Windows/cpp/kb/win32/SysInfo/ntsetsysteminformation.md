# NtSetSystemInformation

Sets the provided system information.


```C++
NTAPI NtSetSystemInformation (
    __in SYSTEM_INFORMATION_CLASS SystemInformationClass,
    __in_bcount_opt(SystemInformationLength) PVOID SystemInformation,
    __in ULONG SystemInformationLength
);
```



## Parameters

### SystemInformationClass

One of the values enumerated in SYSTEM_INFORMATION_CLASS, which indicate the
kind of system information to be set. For information about this enumeration, see [NtQuerySystemInformation](/windows/win32/api/winternl/nf-winternl-ntquerysysteminformation). **NtSetSystemInformation** only supports a subset of the information classes listed.

### SystemInformation

A pointer to a buffer that specifies the new information. The
size and structure of this information varies depending on the value of the
*SystemInformationClass* parameter. For more information, see the description of the *SystemInformation* parameter for [NtQuerySystemInformation](/windows/win32/api/winternl/nf-winternl-ntquerysysteminformation).

### SystemInformationLength

The length of the *SystemInformation* buffer, in bytes.

## Return value

Returns an  NTSTATUS success or error code. 

## Remarks

This API is not defined in a Windows SDK header file and must be manually declared. The API is exported from ntdll.dll.

## Requirements

## See also



 
