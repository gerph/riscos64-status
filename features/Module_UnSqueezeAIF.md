# Module: UnSqueezeAIF

## Summary

UnSqueezeAIF is the loader-side decompressor for squashed AIF executables. It expands compressed application images so that RISC OS can execute them, rather than providing a general filesystem compression service.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has application environment
* Has dynamic code
* Has services
* Has services fast

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Executable handling |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_UKCompression` |


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
* `Wimp`


