# __svm_vmsave

**Microsoft Specific**

Stores a subset of processor state in the specified virtual machine control block (VMCB).

## Syntax

```C
void __svm_vmsave(
   size_t VmcbPhysicalAddress
);
```

### Parameters

*VmcbPhysicalAddress*\
[in] The physical address of the VMCB.

## Remarks

The `__svm_vmsave` function is equivalent to the `VMSAVE` machine instruction. This function supports the interaction of a host's virtual machine monitor with a guest operating system and its applications. For more information, search for the document, "AMD64 Architecture Programmer's Manual Volume 2: System Programming," document number 24593, revision 3.11 or later, at the [AMD Corporation](https://developer.amd.com/resources/developer-guides-manuals/) site.

## Requirements

|Intrinsic|Architecture|
|---------------|------------------|
|`__svm_vmsave`|x86, x64|

**Header file** \<intrin.h>

**END Microsoft Specific**

## See also

[Compiler intrinsics](../intrinsics/compiler-intrinsics.md)\
[__svm_vmrun](../intrinsics/svm-vmrun.md)\
[__svm_vmload](../intrinsics/svm-vmload.md)