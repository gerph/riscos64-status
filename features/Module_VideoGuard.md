# Module: VideoGuard

## Discovered features


* Has services
* Has services fast
* Is c

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Detects configured display present on startup |
| [X]      | [X]       | Selects another display if configured display is not available |
| [X]      | [X]       | Input forces a display reselection if not present |

*None found*

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Service_DisplayChanged` |
| [X]      | [X]       | `Service_DisplayStatus` |
| [X]      | [X]       | `Service_ErrorStarting` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `ByteV` |
| [X]      | [X]       | `RdchV` |


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
* `Wimp`


