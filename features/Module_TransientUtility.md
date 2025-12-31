# Module: TransientUtility

## Discovered features


* Has dynamic code
* Has file access
* Has services
* Has services fast
* Is c
* Uses logging

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Recognises utility header |
| [ ]      | [ ]       | Rejects unheadered files (64-bit only) |
| [ ]      | [ ]       | Rejects files for incorrect bitness |
| [ ]      | [ ]       | Allocates space to run code |
| [ ]      | [ ]       | Deallocates on code completion |
| [ ]      | [ ]       | Ensures sufficient stack space |



### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*TransientUtility` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_FSRedeclare` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `FSCV` |


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


* `FPEmulator`
* `MessageTrans`
* `SharedCLibrary`
* `SysLog`


