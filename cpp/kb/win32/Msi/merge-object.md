# Merge Object

The **Merge** object provides access to other top-level objects. A **Merge** object must be created before loading the automation support required by COM to access the functions in Mergemod.dll.

Mergemod.dll provides access to the extended functionality at build time through a second version of the existing CLSID. This CLSID supports existing functionality available through the [**IMsmMerge**](/windows/win32/api/mergemod/nn-mergemod-imsmmerge) interface, but the default interface on the object (and the associated dual interface) is the [**IMsmMerge2**](/windows/desktop/api/Mergemod/nn-mergemod-imsmmerge2) interface instead of the **IMsmMerge** interface.

 

 