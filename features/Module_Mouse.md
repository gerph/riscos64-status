# Module: Mouse

## Summary

Mouse is the platform mouse driver. It samples/decodes the physical mouse and feeds movement/button changes into the RISC OS pointer/input path, with device-specific configuration and ResourceFS messages.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/kbdmouse.html)


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


