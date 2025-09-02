# Module: PDriver

## Discovered features


* Has services
* Has services fast
* Has swis
* Uses messagetrans

---

## Provides

### Functionality


* Resourcefs files

### Commands


*None*


### SWIs


* `PDriver_Info` (&80140)
* `PDriver_SetInfo` (&80141)
* `PDriver_CheckFeatures` (&80142)
* `PDriver_PageSize` (&80143)
* `PDriver_SetPageSize` (&80144)
* `PDriver_SelectJob` (&80145)
* `PDriver_CurrentJob` (&80146)
* `PDriver_FontSWI` (&80147)
* `PDriver_EndJob` (&80148)
* `PDriver_AbortJob` (&80149)
* `PDriver_Reset` (&8014A)
* `PDriver_GiveRectangle` (&8014B)
* `PDriver_DrawPage` (&8014C)
* `PDriver_GetRectangle` (&8014D)
* `PDriver_CancelJob` (&8014E)
* `PDriver_ScreenDump` (&8014F)
* `PDriver_EnumerateJobs` (&80150)
* `PDriver_SetPrinter` (&80151)
* `PDriver_CancelJobWithError` (&80152)
* `PDriver_SelectIllustration` (&80153)
* `PDriver_InsertIllustration` (&80154)
* `PDriver_DeclareFont` (&80155)
* `PDriver_DeclareDriver` (&80156)
* `PDriver_RemoveDriver` (&80157)
* `PDriver_SelectDriver` (&80158)
* `PDriver_EnumerateDrivers` (&80159)
* `PDriver_MiscOp` (&8015A)
* `PDriver_MiscOpForDriver` (&8015B)
* `PDriver_SetDriver` (&8015C)
* `PDriver_JPEGSWI` (&8015D)
* `PDriver_Command` (&8015E)
* `PDriver_CurrentRectangle` (&8015F)


### Services


* `Service_PDriverGetSharedMessagesFile`
* `Service_ResourceFSStarting`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_PDriverChanged`
* `Service_PDriverGetMessages`
* `Service_PDriverStarting`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `ResourceFS`


