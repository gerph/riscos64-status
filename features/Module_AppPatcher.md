# Module: AppPatcher

## Discovered features


* Has dynamic code
* Has services
* Has services fast
* Is c
* Uses console output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Executable handling |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*PatchStats` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ModulePreInit` |
| [X]      | [ ]       | `Service_UKCompression` |


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
* `SharedCLibrary`
* `TaskWindow`
* `Wimp`


