# Module: ScreenModes

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Is hardware specific
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
| [X]      | [ ]       | `*LoadModeFile` |
| [X]      | [ ]       | `*VIDCBandwidthLimit` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ScreenModes_ReadInfo` (&487C0) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DisplayChanged` |
| [X]      | [ ]       | `Service_EnumerateScreenModes` |
| [X]      | [ ]       | `Service_ModeExtension` |


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
| [X]      | [ ]       | `?` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


