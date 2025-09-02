# Module: NetPrint

## Discovered features


* Has nvram state
* Has services
* Has services fast
* Has swis
* Uses console output
* Uses econet
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Econet service |
| [ ]      | [ ]       | Filesystem |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Configure PS` |
| [ ]      | [ ]       | `*ListPS` |
| [ ]      | [ ]       | `*PS` |
| [ ]      | [ ]       | `*SetPS` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `NetPrint_ReadPSNumber` (&40200) |
| [ ]      | [ ]       | `NetPrint_SetPSNumber` (&40201) |
| [ ]      | [ ]       | `NetPrint_ReadPSName` (&40202) |
| [ ]      | [ ]       | `NetPrint_SetPSName` (&40203) |
| [ ]      | [ ]       | `NetPrint_ReadPSTimeouts` (&40204) |
| [ ]      | [ ]       | `NetPrint_SetPSTimeouts` (&40205) |
| [ ]      | [ ]       | `NetPrint_BindPSName` (&40206) |
| [ ]      | [ ]       | `NetPrint_ListServers` (&40207) |
| [ ]      | [ ]       | `NetPrint_ConvertStatusToString` (&40208) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FSRedeclare` |
| [ ]      | [ ]       | `Service_ReAllocatePorts` |


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
| [ ]      | [ ]       | `Service_NetPrintCheckD1` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `EconetV` |


### Events


*None*


### UpCalls


*None*


### Modules


* `Econet`
* `Hourglass`
* `MessageTrans`
* `NetPrint`
* `Territory`


