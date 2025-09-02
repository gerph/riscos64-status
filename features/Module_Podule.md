# Module: Podule

## Discovered features


* Has dynamic code
* Has file access
* Has services
* Has services fast
* Has swis
* Is hardware specific
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
| [ ]      | [ ]       | `*PoduleLoad` |
| [ ]      | [ ]       | `*PoduleSave` |
| [ ]      | [ ]       | `*Podules` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Podule_ReadID` (&40280) |
| [ ]      | [ ]       | `Podule_ReadHeader` (&40281) |
| [ ]      | [ ]       | `Podule_EnumerateChunks` (&40282) |
| [ ]      | [ ]       | `Podule_ReadChunk` (&40283) |
| [ ]      | [ ]       | `Podule_ReadBytes` (&40284) |
| [ ]      | [ ]       | `Podule_WriteBytes` (&40285) |
| [ ]      | [ ]       | `Podule_CallLoader` (&40286) |
| [ ]      | [ ]       | `Podule_RawRead` (&40287) |
| [ ]      | [ ]       | `Podule_RawWrite` (&40288) |
| [ ]      | [ ]       | `Podule_HardwareAddress` (&40289) |
| [ ]      | [ ]       | `Podule_EnumerateChunksWithInfo` (&4028A) |
| [ ]      | [ ]       | `Podule_HardwareAddresses` (&4028B) |
| [ ]      | [ ]       | `Podule_ReturnNumber` (&4028C) |
| [ ]      | [ ]       | `Podule_ReadInfo` (&4028D) |
| [ ]      | [ ]       | `Podule_SetSpeed` (&4028E) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_PreReset` |
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Podule`


