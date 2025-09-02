# Module: PDriverDP

## Discovered features


* Has application environment
* Has services
* Has services fast
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality


* Printer driver

### Commands


*None*


### SWIs


*None*


### Services


* `Service_ModeChange`
* `Service_PDriverGetSharedMessagesFile`
* `Service_PDriverStarting`
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


* `?`
* `Service_PDriverGetMessages`
* `Service_PDumperDying`
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
* `MessageTrans`
* `PDriver`
* `PDumper`
* `Wimp`


