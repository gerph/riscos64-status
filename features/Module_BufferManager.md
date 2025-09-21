# Module: BufferManager


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/bufferman.html)

## Discovered features


* Has services
* Has services fast
* Has swis
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


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Buffer_Create` (&42940) |
| [X]      | [X]       | `Buffer_Remove` (&42941) |
| [X]      | [X]       | `Buffer_Register` (&42942) |
| [X]      | [X]       | `Buffer_Deregister` (&42943) |
| [X]      | [X]       | `Buffer_ModifyFlags` (&42944) |
| [X]      | [X]       | `Buffer_LinkDevice` (&42945) |
| [X]      | [X]       | `Buffer_UnlinkDevice` (&42946) |
| [X]      | [X]       | `Buffer_GetInfo` (&42947) |
| [X]      | [X]       | `Buffer_Threshold` (&42948) |
| [X]      | [ ]       | `Buffer_InternalInfo` (&42949) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `CNPV` |
| [X]      | [ ]       | `INSV` |
| [X]      | [ ]       | `REMV` |


### Events


*None*


### UpCalls


*None*


### Others


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Call device for wakeup |
| [ ]      | [ ]       | Call device for owner change |
| [X]      | [X]       | System buffer `SerialIn` (1) |
| [X]      | [X]       | System buffer `SerialOut` (2) |
| [X]      | [X]       | System buffer `Keyboard` (0) |
| [X]      | [X]       | Fast dispatch `InsertByte`   (0)  |
| [X]      | [X]       | Fast dispatch `InsertBlock`  (1)  |
| [X]      | [X]       | Fast dispatch `RemoveByte`   (2)  |
| [X]      | [X]       | Fast dispatch `RemoveBlock`  (3)  |
| [X]      | [X]       | Fast dispatch `ExamineByte`  (4)  |
| [X]      | [X]       | Fast dispatch `ExamineBlock` (5)  |
| [X]      | [X]       | Fast dispatch `UsedSpace`    (6)  |
| [X]      | [X]       | Fast dispatch `FreeSpace`    (7)  |
| [X]      | [X]       | Fast dispatch `PurgeBuffer`  (8)  |
| [ ]      | [ ]       | Fast dispatch `NextBlock`    (9)  |


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Service_BufferStarting` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `UpCallV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Event_InputFull` |
| [X]      | [X]       | `Event_OutputEmpty` |


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `UpCall_BufferEmptying` |
| [X]      | [X]       | `UpCall_BufferFilling` |


### Modules


* `MessageTrans`


