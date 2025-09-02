# Module: DOSFS

## Discovered features


* Does disc access
* Does file access
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality


* Disc layouts
* Image filesystem

### Commands


* `*CopyBoot`
* `*DOSMap`


### SWIs


* `DOSFS_DiscFormat` (&44B00)
* `DOSFS_LayoutStructure` (&44B01)


### Services


* `Service_CloseFile`
* `Service_DisplayFormatHelp`
* `Service_EnumerateFormats`
* `Service_FSRedeclare`
* `Service_IdentifyDisc`
* `Service_IdentifyFormat`
* `Service_LookupFileType`
* `Service_Memory`
* `Service_Reset`
* `Service_StartUpFS`
* `Service_WimpSaveDesktop`


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


* `ADFS`
* `FileCore`
* `MessageTrans`
* `MimeMap`
* `SharedCLibrary`


