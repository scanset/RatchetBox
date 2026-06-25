# Microsoft Extensions

*`asm-statement`*:\
&emsp;**`__asm`** *`assembly-instruction`* **`;`**<sub>opt</sub>\
&emsp;**`__asm {`** *`assembly-instruction-list`*  **`} ;`**<sub>opt</sub>

*`assembly-instruction-list`*:\
&emsp;*`assembly-instruction`* **`;`**<sub>opt</sub> \
&emsp;*`assembly-instruction`* **`;`** *`assembly-instruction-list`* **`;`**<sub>opt</sub>

*`ms-modifier-list`*:\
&emsp;*`ms-modifier`* *`ms-modifier-list`*<sub>opt</sub>

*`ms-modifier`*:\
&emsp;**`__cdecl`**\
&emsp;**`__fastcall`**\
&emsp;**`__stdcall`**\
&emsp;**`__syscall`** (reserved for future implementations)\
&emsp;**`__oldcall`** (reserved for future implementations)\
&emsp;**`__unaligned`** (reserved for future implementations)\
&emsp;*`based-modifier`*

*`based-modifier`*:\
&emsp;**`__based (`** *`based-type`* **`)`**

*`based-type`*:\
&emsp;*`name`*