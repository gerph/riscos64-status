# Module: NetPrint

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/netprint.html)

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
| [X]      | [ ]       | `*ListPS` |
| [X]      | [ ]       | `*PS` |
| [X]      | [ ]       | `*SetPS` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `NetPrint_ReadPSNumber` (&40200) |
| [X]      | [X]       | `NetPrint_SetPSNumber` (&40201) |
| [X]      | [X]       | `NetPrint_ReadPSName` (&40202) |
| [X]      | [X]       | `NetPrint_SetPSName` (&40203) |
| [X]      | [X]       | `NetPrint_ReadPSTimeouts` (&40204) |
| [X]      | [X]       | `NetPrint_SetPSTimeouts` (&40205) |
| [X]      | [X]       | `NetPrint_BindPSName` (&40206) |
| [X]      | [X]       | `NetPrint_ListServers` (&40207) |
| [X]      | [X]       | `NetPrint_ConvertStatusToString` (&40208) |


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


