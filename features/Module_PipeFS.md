# Module: PipeFS

## Discovered features


* Has background processing
* Has file access
* Has services
* Has services fast
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Filesystem |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*PipeCopy` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FSRedeclare` |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_ModifyingFile` |
| [ ]      | [ ]       | `UpCall_Sleep` |
| [ ]      | [ ]       | `UpCall_SleepNoMore` |


### Modules


* `MessageTrans`


