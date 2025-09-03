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

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*BreakClr` |
| [ ]      | [ ]       | `*BreakList` |
| [ ]      | [ ]       | `*BreakSet` |
| [ ]      | [ ]       | `*Continue` |
| [ ]      | [ ]       | `*Debug` |
| [ ]      | [ ]       | `*InitStore` |
| [ ]      | [ ]       | `*Memory` |
| [ ]      | [ ]       | `*MemoryA` |
| [ ]      | [ ]       | `*MemoryI` |
| [ ]      | [ ]       | `*ShowRegs` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Debugger_Disassemble` (&40380) |
| [ ]      | [ ]       | `Debugger_DisassembleThumb` (&40381) |


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


