# Module: PNG

## Discovered features


* Does file access
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses heap dynamic area

---

## Provides

### Functionality


* License info

### Commands


*None*


### SWIs


* `PNG_Version` (&53BC0)
* `PNG_Signature` (&53BC1)
* `PNG_Structure` (&53BC2)
* `PNG_Chunk` (&53BC3)
* `PNG_Info` (&53BC4)
* `PNG_Time` (&53BC5)
* `PNG_Set` (&53BC6)
* `PNG_Compression` (&53BC7)
* `PNG_GetChunkInfo` (&53BC8)
* `PNG_SetChunkInfo` (&53BC9)
* `PNG_Functions` (&53BCA)
* `PNG_Greyscale` (&53BCB)
* `PNG_Process` (&53BCC)
* `PNG_Memory` (&53BCD)
* `PNG_GetInfo` (&53BCE)


### Services


* `Service_TaskManagerAcknowledgements`
* `Service_WimpCloseDown`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_TaskManagerAcknowledgements`


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


