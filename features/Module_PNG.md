# Module: PNG

## Discovered features


* Has file access
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses heap dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | License info |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `PNG_Version` (&53BC0) |
| [X]      | [ ]       | `PNG_Signature` (&53BC1) |
| [X]      | [ ]       | `PNG_Structure` (&53BC2) |
| [X]      | [ ]       | `PNG_Chunk` (&53BC3) |
| [X]      | [ ]       | `PNG_Info` (&53BC4) |
| [X]      | [ ]       | `PNG_Time` (&53BC5) |
| [X]      | [ ]       | `PNG_Set` (&53BC6) |
| [X]      | [ ]       | `PNG_Compression` (&53BC7) |
| [X]      | [ ]       | `PNG_GetChunkInfo` (&53BC8) |
| [X]      | [ ]       | `PNG_SetChunkInfo` (&53BC9) |
| [X]      | [ ]       | `PNG_Functions` (&53BCA) |
| [X]      | [ ]       | `PNG_Greyscale` (&53BCB) |
| [X]      | [ ]       | `PNG_Process` (&53BCC) |
| [X]      | [ ]       | `PNG_Memory` (&53BCD) |
| [X]      | [ ]       | `PNG_GetInfo` (&53BCE) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |
| [X]      | [ ]       | `Service_WimpCloseDown` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `ZLib`


