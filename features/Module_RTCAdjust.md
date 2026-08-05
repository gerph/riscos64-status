# Module: RTCAdjust

## Summary

RTCAdjust is a small Real Time Clock adjustment module, providing the platform mechanism to correct/maintain the hardware clock's time relative to system time.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has background processing
* Has nvram state
* Has services
* Has services fast
* Is hardware specific
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `WordV` |


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


* `IIC`
* `MessageTrans`


