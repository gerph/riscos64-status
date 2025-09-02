# Module: FileSwitch

## Discovered features


* Does directory access
* Does file access
* Has application environment
* Has dynamic code
* Has nvram state
* Has services
* Has services fast
* Sets variables
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


* `*Back`
* `*CDir`
* `*Cat`
* `*Configure FileSystem`
* `*Configure Truncate`
* `*Copy`
* `*Count`
* `*Dir`
* `*EnumDir`
* `*Ex`
* `*FileInfo`
* `*Info`
* `*LCat`
* `*LEx`
* `*Lib`
* `*NoDir`
* `*NoLib`
* `*NoURD`
* `*Rename`
* `*Run`
* `*SetType`
* `*Shut`
* `*ShutDown`
* `*Stamp`
* `*URD`
* `*Up`
* `*Wipe`


### SWIs


*None*


### Services


* `Service_CloseFile`
* `Service_DiscDismounted`
* `Service_Memory`
* `Service_Reset`
* `Service_StartUpFS`
* `Service_TerritoryStarted`


### Vectors


* `?`
* `UpCallV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_CloseFile`
* `Service_FSRedeclare`
* `Service_LookupFileType`
* `Service_NewApplication`


### Vectors


*None*


### Events


*None*


### UpCalls


* `UpCall_ModifyingFile`
* `UpCall_NewApplication`


### Modules


* `MessageTrans`
* `Territory`
* `Wimp`


