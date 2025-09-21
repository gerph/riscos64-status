# Module: Filer

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/filers.html)

## Discovered features


* Has application environment
* Has argument parsing
* Has directory access
* Has file access
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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Default desktop application |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Desktop_Filer` |
| [ ]      | [ ]       | `*Filer_Boot` |
| [ ]      | [ ]       | `*Filer_CloseDir` |
| [ ]      | [ ]       | `*Filer_Layout` |
| [ ]      | [ ]       | `*Filer_OpenDir` |
| [ ]      | [ ]       | `*Filer_Options` |
| [ ]      | [ ]       | `*Filer_Run` |
| [ ]      | [ ]       | `*Filer_Thumbnails` |
| [ ]      | [ ]       | `*Filer_Truncation` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_DiscDismounted` |
| [ ]      | [ ]       | `Service_MessageFileClosed` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartWimp` |
| [ ]      | [ ]       | `Service_StartedWimp` |
| [ ]      | [ ]       | `Service_TerritoryStarted` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCallV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FilerDying` |
| [ ]      | [ ]       | `Service_StartFiler` |
| [ ]      | [ ]       | `Service_StartedFiler` |


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


