# Module: PDriverPS

## Discovered features


* Does file access
* Has application environment
* Has services
* Has services fast
* Sets variables
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality


* Printer driver
* Resourcefs files

### Commands


*None*


### SWIs


*None*


### Services


* `Service_ModeChange`
* `Service_PDriverGetSharedMessagesFile`
* `Service_PDriverStarting`
* `Service_ResourceFSStarting`
* `Service_WimpReportError`


### Vectors


* `?`
* `SpriteV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_PDriverGetMessages`
* `Service_Print`


### Vectors


* `PaletteV`


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `Draw`
* `Font`
* `JPEG`
* `MakePSFont`
* `MessageTrans`
* `PDriver`
* `ResourceFS`


