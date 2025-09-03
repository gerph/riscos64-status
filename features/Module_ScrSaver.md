# Module: ScrSaver

## Discovered features


* Has services
* Has services fast
* Is c
* Sets variables

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Default desktop application |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ScreenBlanking` |
| [X]      | [ ]       | `Service_ScreenRestored` |
| [X]      | [ ]       | `Service_ShutDownComplete` |
| [X]      | [ ]       | `Service_StartWimp` |


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
* `PDriver`
* `ScreenBlanker`
* `SharedCLibrary`
* `TaskManager`
* `Wimp`


