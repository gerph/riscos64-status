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
| [X]      | [X]       | License info |
| [X]      | [X]       | Traps Wimp reported errors to SysLog |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Service_ErrorEnding` |
| [X]      | [X]       | `Service_ErrorStarting` |
| [X]      | [X]       | `Service_TaskManagerAcknowledgements` |


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
| [X]      | [X]       | `Service_TaskManagerAcknowledgements` |


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


