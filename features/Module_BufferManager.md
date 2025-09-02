# Module: BufferManager

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


*None found*

### Commands


*None*


### SWIs


* `Buffer_Create` (&42940)
* `Buffer_Remove` (&42941)
* `Buffer_Register` (&42942)
* `Buffer_Deregister` (&42943)
* `Buffer_ModifyFlags` (&42944)
* `Buffer_LinkDevice` (&42945)
* `Buffer_UnlinkDevice` (&42946)
* `Buffer_GetInfo` (&42947)
* `Buffer_Threshold` (&42948)
* `Buffer_InternalInfo` (&42949)


### Services


* `Service_Reset`


### Vectors


* `CNPV`
* `INSV`
* `REMV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_BufferStarting`


### Vectors


* `UpCallV`


### Events


* `Event_InputFull`
* `Event_OutputEmpty`


### UpCalls


* `UpCall_BufferEmptying`
* `UpCall_BufferFilling`


### Modules


* `MessageTrans`


