# Module: ARM

## Summary

ARM is the early ARM processor support module. It exposes processor/cache configuration commands and supplies the processor-specific support expected by the kernel on non-ARM3 machines.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has nvram state
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Changing cache state |
| [ ]      | [ ]       | Configurable cache state |

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `*Cache` (on and off) |
| [ ]      | [ ]       | `*Configure Cache` |


### SWIs


*None*


### Services


*None*


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


