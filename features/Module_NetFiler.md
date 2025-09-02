# Module: NetFiler

## Discovered features


* Does file access
* Has nvram state
* Has services
* Has services fast
* Is desktop application
* Sets variables
* Uses econet
* Uses messagetrans

---

## Provides

### Functionality


* Desktop filer icon

### Commands


* `*Desktop_NetFiler`


### SWIs


*None*


### Services


* `Service_FilerDying`
* `Service_MessageFileClosed`
* `Service_ModeChange`
* `Service_NetFS`
* `Service_Reset`
* `Service_StartFiler`
* `Service_StartedFiler`


### Vectors


* `EventV`


### Events


* `Event_Econet_OSProc`


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


* `Econet`
* `MessageTrans`
* `NetFS`
* `Wimp`


