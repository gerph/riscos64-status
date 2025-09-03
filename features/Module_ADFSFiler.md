# Module: ADFSFiler

## Discovered features


* Has argument parsing
* Has disc access
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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Desktop filer icon |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Desktop_ADFSFiler` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FilerDying` |
| [ ]      | [ ]       | `Service_MessageFileClosed` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartFiler` |
| [ ]      | [ ]       | `Service_StartedFiler` |


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
| [ ]      | [ ]       | `Service_EnumerateFormats` |
| [ ]      | [ ]       | `Service_IdentifyDisc` |


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


