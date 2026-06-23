# \_\_MsiPromptForCD Mutex

The \_\_MsiPromptForCD Mutex exists when the installer prompts the user to insert a CD-ROM. Autoplay programs should check that the \_\_MsiPromptForCD mutex is not currently set before starting. Note that it is possible for a CD-ROM prompt to occur before either the InProgress key or the \_MSIExecute Mutex exist.

 

 


