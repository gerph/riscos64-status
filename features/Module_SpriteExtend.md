# Module: SpriteExtend

## Discovered features


* Has dynamic code
* Has pointer control
* Has services
* Has services fast
* Has swis
* Uses dynamic area
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Graphics extension |
| [ ]      | [ ]       | Graphics output |
| [ ]      | [ ]       | License info |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `JPEG_Info` (&49980) |
| [ ]      | [ ]       | `JPEG_FileInfo` (&49981) |
| [ ]      | [ ]       | `JPEG_PlotScaled` (&49982) |
| [ ]      | [ ]       | `JPEG_PlotFileScaled` (&49983) |
| [ ]      | [ ]       | `JPEG_PlotTransformed` (&49984) |
| [ ]      | [ ]       | `JPEG_PlotFileTransformed` (&49985) |
| [ ]      | [ ]       | `JPEG_PDriverIntercept` (&49986) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_ResourceFSStarted` |
| [ ]      | [ ]       | `Service_SwitchingOutputToSprite` |
| [ ]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
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
| [ ]      | [ ]       | `Service_SpriteReregister` |
| [ ]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `BlendTable`
* `ColourTrans`
* `Draw`
* `InverseTable`
* `MessageTrans`
* `PDriver`


