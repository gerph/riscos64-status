# Module: ErrorLog

## Discovered features


* Has services
* Has services fast
* Is c
* Sets variables
* Uses logging

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | License info |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ErrorEnding` |
| [X]      | [ ]       | `Service_ErrorStarting` |
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |


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
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `SysLog`
* `TaskManager`
* `Wimp`


