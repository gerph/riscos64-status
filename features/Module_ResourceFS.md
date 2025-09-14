# Module: ResourceFS

## Discovered features


* Has services
* Has services fast
* Has swis
* Sets variables
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Filesystem |
| [ ]      | [ ]       | Can list files |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*ResourceFS` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ResourceFS_RegisterFiles` (&41B40) |
| [X]      | [ ]       | `ResourceFS_DeregisterFiles` (&41B41) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FSRedeclare` |
| [ ]      | [ ]       | `Service_TerritoryStarted` |


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
| [X]      | [ ]       | `Service_ResourceFSDying` |
| [X]      | [ ]       | `Service_ResourceFSStarted` |
| [X]      | [ ]       | `Service_ResourceFSStarting` |


### Vectors


*None*


### Events


*None*


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_ModifyingFile` |


### Modules


* `MessageTrans`
* `Territory`


