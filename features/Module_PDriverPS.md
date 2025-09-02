# Module: PDriverPS

## Discovered features


* Has application environment
* Has file access
* Has services
* Has services fast
* Sets variables
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Graphics extension |
| [ ]      | [ ]       | Printer driver |
| [ ]      | [ ]       | Resourcefs files |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_PDriverGetSharedMessagesFile` |
| [ ]      | [ ]       | `Service_PDriverStarting` |
| [ ]      | [ ]       | `Service_ResourceFSStarting` |
| [ ]      | [ ]       | `Service_WimpReportError` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |
| [ ]      | [ ]       | `SpriteV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_PDriverGetMessages` |
| [ ]      | [ ]       | `Service_Print` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `PaletteV` |


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


