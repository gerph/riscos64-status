# Module: MessageTrans

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/messagetrans.html)

## Discovered features


* Has kernel collusion
* Has services
* Has services fast
* Has swis

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
| [X]      | [ ]       | `MessageTrans_FileInfo` (&41500) |
| [X]      | [ ]       | `MessageTrans_OpenFile` (&41501) |
| [X]      | [ ]       | `MessageTrans_Lookup` (&41502) |
| [X]      | [ ]       | `MessageTrans_MakeMenus` (&41503) |
| [X]      | [ ]       | `MessageTrans_CloseFile` (&41504) |
| [X]      | [ ]       | `MessageTrans_EnumerateTokens` (&41505) |
| [X]      | [ ]       | `MessageTrans_ErrorLookup` (&41506) |
| [X]      | [ ]       | `MessageTrans_GSLookup` (&41507) |
| [X]      | [ ]       | `MessageTrans_CopyError` (&41508) |
| [ ]      | [ ]       | `MessageTrans_Dictionary` (&41509) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ResourceFSDying` |
| [ ]      | [ ]       | `Service_ResourceFSStarted` |
| [ ]      | [ ]       | `Service_TerritoryStarted` |


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
| [X]      | [ ]       | `Service_MessageFileClosed` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Squash`


