# Module: DiagnosticDump

## Summary

DiagnosticDump records C-program abnormal-exit/backtrace diagnostics. It captures register/stack/memory details, writes dump records, and by default opens a Filer window for the result; configurable options control enablement, detail and automatic viewing.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has application environment
* Has services
* Has services fast
* Has swis
* Is c
* Is hardware specific
* Uses dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*DiagnosticDump` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `DiagnosticDump_Write` (&58B00) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_APCSBacktrace` |


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
| [X]      | [ ]       | `Service_APCSBacktrace` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `TaskManager`
* `Wimp`


