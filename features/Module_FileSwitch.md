# Module: FileSwitch

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/fileswitchnew.html)

## Discovered features


* Has application environment
* Has directory access
* Has dynamic code
* Has file access
* Has nvram state
* Has services
* Has services fast
* Sets variables
* Uses console input
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Back` |
| [ ]      | [ ]       | `*CDir` |
| [ ]      | [ ]       | `*Cat` |
| [ ]      | [ ]       | `*Configure FileSystem` |
| [ ]      | [ ]       | `*Configure Truncate` |
| [ ]      | [ ]       | `*Copy` |
| [ ]      | [ ]       | `*Count` |
| [ ]      | [ ]       | `*Dir` |
| [ ]      | [ ]       | `*EnumDir` |
| [ ]      | [ ]       | `*Ex` |
| [ ]      | [ ]       | `*FileInfo` |
| [ ]      | [ ]       | `*Info` |
| [ ]      | [ ]       | `*LCat` |
| [ ]      | [ ]       | `*LEx` |
| [ ]      | [ ]       | `*Lib` |
| [ ]      | [ ]       | `*NoDir` |
| [ ]      | [ ]       | `*NoLib` |
| [ ]      | [ ]       | `*NoURD` |
| [ ]      | [ ]       | `*Rename` |
| [ ]      | [ ]       | `*Run` |
| [ ]      | [ ]       | `*SetType` |
| [ ]      | [ ]       | `*Shut` |
| [ ]      | [ ]       | `*ShutDown` |
| [ ]      | [ ]       | `*Stamp` |
| [ ]      | [ ]       | `*URD` |
| [ ]      | [ ]       | `*Up` |
| [ ]      | [ ]       | `*Wipe` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_CloseFile` |
| [ ]      | [ ]       | `Service_DiscDismounted` |
| [ ]      | [ ]       | `Service_Memory` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartUpFS` |
| [ ]      | [ ]       | `Service_TerritoryStarted` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |
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
| [ ]      | [ ]       | `Service_CloseFile` |
| [ ]      | [ ]       | `Service_FSRedeclare` |
| [ ]      | [ ]       | `Service_LookupFileType` |
| [ ]      | [ ]       | `Service_NewApplication` |


### Vectors


*None*


### Events


*None*


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_ModifyingFile` |
| [ ]      | [ ]       | `UpCall_NewApplication` |


### Modules


* `MessageTrans`
* `Territory`
* `Wimp`


