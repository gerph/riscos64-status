# Module: Debugger

## Discovered features


* Has application environment
* Has dynamic code
* Has services
* Has services fast
* Has swis
* Uses console input
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Breakpoints |
| [X]      | [X]       | ARM32 default in ARM32 host, AArch64 default in AArch64 host |
| [X]      | [X]       | Provides comments on immediate constants |
| [ ]      | [ ]       | Uses MessageTrans |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*BreakClr` |
| [X]      | [ ]       | `*BreakList` |
| [X]      | [ ]       | `*BreakSet` |
| [X]      | [ ]       | `*Continue` |
| [X]      | [ ]       | `*Debug` |
| [X]      | [X]       | `*InitStore` |
| [X]      | [X]       | `*Memory` |
| [X]      | [X]       | `*MemoryA` |
| [X]      | [X]       | `*MemoryI` |
| [X]      | [X]       | `*DumpI` |
| [X]      | [X]       | `*ShowRegs` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Debugger_Disassemble` (&40380) |
| [X]      | [X]       | `Debugger_DisassembleThumb` (&40381) |
| [ ]      | [ ]       | `Debugger_Flags` (&40382) |
| [ ]      | [ ]       | `Debugger_CPU` (&40383) |
| [ ]      | [ ]       | `Debugger_DisassemblePlus` (&40384) |
| [X]      | [X]       | `Debugger_DisassembleArch` (&40385) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Debugger`
* `MessageTrans`


