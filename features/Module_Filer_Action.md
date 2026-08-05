# Module: FilerAct

## Summary

FilerAction implements the asynchronous file-operation engine behind desktop filer actions: copying, moving, deleting and reporting progress/errors. It is deliberately separable from the directory-viewing Filer so other clients can request standard Filer operations without duplicating transfer UI and error handling.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has application environment
* Has file access
* Has services
* Has services fast
* Is c
* Sets variables
* Uses console input
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
| [X]      | [ ]       | `*Filer_Action` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_Memory` |
| [X]      | [ ]       | `Service_Reset` |


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
| [X]      | [ ]       | `UpCall_NewApplication` |


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `Territory`
* `Wimp`


