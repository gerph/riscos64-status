# Module: UtilityModule

## Summary

The UtilityModule only provides a single function - that of the 'supervisor'
environment, triggered on entry of the module.

## Discovered features


* Has application environment
* Has services
* Has services fast
* Uses console input
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Command line prompt shown with `CLI$Prompt` |
| [ ]      | [ ]       | Errors are reported |
| [ ]      | [ ]       | Exits are trapped |
| [ ]      | [ ]       | Errors are trapped |
| [ ]      | [ ]       | Aborts are trapped |


### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*GOS` |


### SWIs


*None*

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Memory` |
| [ ]      | [ ]       | `Service_Reset` |


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

