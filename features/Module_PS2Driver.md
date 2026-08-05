# Module: PS2Driver

## Summary

PS2Driver is the hardware driver for PS/2 keyboard/mouse devices. It decodes PS/2 protocol traffic, supplies the system input path and carries configuration/message support for the device.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has services
* Has services fast
* Is hardware specific
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Hardware driver |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Portable` |
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `KEYV` |
| [ ]      | [ ]       | `PointerV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `KEYV` |


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Portable`


