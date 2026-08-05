# Module: FPEmulator

## Summary

FPEmulator is the floating-point accelerator/emulator support module. It handles unsupported floating-point instructions and supplies the legacy floating-point environment on hardware without an appropriate coprocessor.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has swis
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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `FPEmulator_Version` (&40480) |
| [ ]      | [ ]       | `FPEmulator_DeactivateContext` (&40481) |
| [ ]      | [ ]       | `FPEmulator_ActivateContext` (&40482) |


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


