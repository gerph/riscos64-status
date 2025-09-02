# Module: Filer

## Discovered features


* Does directory access
* Does file access
* Has application environment
* Has argument parsing
* Has nvram state
* Has services
* Has services fast
* Is desktop application
* Sets variables
* Uses dynamic area
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality


* Default desktop application

### Commands


* `*Desktop_Filer`
* `*Filer_Boot`
* `*Filer_CloseDir`
* `*Filer_Layout`
* `*Filer_OpenDir`
* `*Filer_Options`
* `*Filer_Run`
* `*Filer_Thumbnails`
* `*Filer_Truncation`


### SWIs


*None*


### Services


* `Service_DiscDismounted`
* `Service_MessageFileClosed`
* `Service_Reset`
* `Service_StartWimp`
* `Service_StartedWimp`
* `Service_TerritoryStarted`


### Vectors


* `UpCallV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_FilerDying`
* `Service_StartFiler`
* `Service_StartedFiler`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ConvertSprite`
* `DragAnObject`
* `DragASprite`
* `FilerAction`
* `Font`
* `Hourglass`
* `ImageFileRender`
* `MessageTrans`
* `NetFS`
* `ShareFS`
* `TaskManager`
* `Territory`
* `Wimp`


