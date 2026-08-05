# Module: RAMFSFiler

## Summary

RAMFSFiler is the desktop Filer companion for RAMFS. It supplies RAMFS volume icons, menu actions and Filer message handling; RAMFS owns the in-memory filesystem implementation.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has services
* Has services fast
* Is desktop application
* Sets variables
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Desktop filer icon |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Desktop_RAMFSFiler` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FilerDying` |
| [ ]      | [ ]       | `Service_MessageFileClosed` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartFiler` |
| [ ]      | [ ]       | `Service_StartedFiler` |


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
| [ ]      | [ ]       | `Service_StartUpFS` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Wimp`


