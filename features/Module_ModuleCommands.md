# Module: ModuleCommands

## Summary

ModuleCommands implements command-line operations on the module chain (listing, loading, killing and inspecting modules), using the Kernel's OS_Module interface.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has kernel collusion
* Uses console output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `*Modules` |
| [ ]      | [ ]       | `*Help Modules` |
| [X]      | [X]       | `*RMClear` |
| [X]      | [X]       | `*RMEnsure` |
| [ ]      | [ ]       | `*RMFaster` |
| [X]      | [X]       | `*RMInsert` |
| [X]      | [X]       | `*RMKill` |
| [X]      | [X]       | `*RMLoad` |
| [X]      | [X]       | `*RMReInit` |
| [X]      | [X]       | `*RMRun` |
| [X]      | [X]       | `*RMTidy` |
| [X]      | [X]       | `*ROMModules` |
| [X]      | [X]       | `*Unplug` |


### SWIs


*None*


### Services


*None*


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


* `MessageTrans`


