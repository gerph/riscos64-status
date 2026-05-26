# Module: OSCommands

## Discovered features


* Has argument parsing
* Has kernel collusion
* Has nvram state
* Sets variables
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Help` code commands |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Help Break` |
| [ ]      | [ ]       | `*ChangeDynamicArea` |
| [ ]      | [ ]       | `*Help Commands` |
| [ ]      | [ ]       | `*Configure` |
| [X]      | [X]       | `*Echo` |
| [X]      | [X]       | `*Error` |
| [X]      | [X]       | `*FX` |
| [ ]      | [ ]       | `*Help FileCommands` |
| [ ]      | [ ]       | `*GO` |
| [ ]      | [ ]       | `*GOS` |
| [X]      | [X]       | `*Help` |
| [X]      | [X]       | `*IF` |
| [ ]      | [ ]       | `*Ignore` |
| [X]      | [X]       | `*Key` |
| [ ]      | [ ]       | `*Help PowerOn` |
| [X]      | [X]       | `*Quit` |
| [ ]      | [ ]       | `*Help Reset` |
| [X]      | [X]       | `*Set` |
| [X]      | [X]       | `*SetEval` |
| [X]      | [X]       | `*SetMacro` |
| [X]      | [X]       | `*SetEvalMacro` (optionally) |
| [ ]      | [ ]       | `*Shadow` |
| [X]      | [X]       | `*Show` |
| [ ]      | [ ]       | `*Status` |
| [ ]      | [ ]       | `*Help Syntax` |
| [X]      | [X]       | `*TV` |
| [X]      | [X]       | `*Time` |
| [X]      | [X]       | `*Unset` |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |
| [ ]      | [ ]       | `Service_Help` |
| [ ]      | [ ]       | `Service_HelpQuery` |
| [ ]      | [ ]       | `Service_UKConfig` |
| [ ]      | [ ]       | `Service_UKStatus` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`


