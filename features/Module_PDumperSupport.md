# Module: PDumperSupport

## Discovered features


* Does file access
* Has services
* Has services fast
* Has swis
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


*None*


### SWIs


* `PDumper_Info` (&41B00)
* `PDumper_Claim` (&41B01)
* `PDumper_Free` (&41B02)
* `PDumper_Find` (&41B03)
* `PDumper_StartJob` (&41B04)
* `PDumper_TidyJob` (&41B05)
* `PDumper_SetColour` (&41B06)
* `PDumper_PrepareStrip` (&41B07)
* `PDumper_LookupError` (&41B08)
* `PDumper_CopyFilename` (&41B09)


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


* `Service_PDriverGetMessages`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `MessageTrans`
* `PDriver`
* `PDumper`


