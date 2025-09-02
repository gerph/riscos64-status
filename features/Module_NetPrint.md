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


* Econet service
* Filesystem

### Commands


* `*Configure PS`
* `*ListPS`
* `*PS`
* `*SetPS`


### SWIs


* `NetPrint_ReadPSNumber` (&40200)
* `NetPrint_SetPSNumber` (&40201)
* `NetPrint_ReadPSName` (&40202)
* `NetPrint_SetPSName` (&40203)
* `NetPrint_ReadPSTimeouts` (&40204)
* `NetPrint_SetPSTimeouts` (&40205)
* `NetPrint_BindPSName` (&40206)
* `NetPrint_ListServers` (&40207)
* `NetPrint_ConvertStatusToString` (&40208)


### Services


* `Service_FSRedeclare`
* `Service_ReAllocatePorts`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_NetPrintCheckD1`


### Vectors


* `EconetV`


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


