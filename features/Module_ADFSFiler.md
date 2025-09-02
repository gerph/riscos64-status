# Module: ADFSFiler

## Discovered features


* Does disc access
* Has argument parsing
* Has nvram state
* Has services
* Has services fast
* Is desktop application
* Sets variables
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality


* Desktop filer icon

### Commands


* `*Desktop_ADFSFiler`


### SWIs


*None*


### Services


* `Service_FilerDying`
* `Service_MessageFileClosed`
* `Service_Reset`
* `Service_StartFiler`
* `Service_StartedFiler`


### Vectors


* `UpCallV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_EnumerateFormats`
* `Service_IdentifyDisc`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ADFS`
* `FileCore`
* `MessageTrans`
* `ShareFS`
* `Territory`
* `Wimp`


