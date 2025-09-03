# Module: RemotePrinterSupport

## Discovered features


* Has background processing
* Has serial access
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
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
| [X]      | [ ]       | `RemotePrinterSupport_ReadPollwordLocation` (&47980) |
| [X]      | [ ]       | `RemotePrinterSupport_GetNextEvent` (&47981) |
| [X]      | [ ]       | `RemotePrinterSupport_ReadUniqueAddress` (&47982) |
| [X]      | [ ]       | `RemotePrinterSupport_Enable` (&47983) |
| [X]      | [ ]       | `RemotePrinterSupport_Disable` (&47984) |
| [X]      | [ ]       | `RemotePrinterSupport_EnableUpcalls` (&47985) |
| [X]      | [ ]       | `RemotePrinterSupport_DisableUpcalls` (&47986) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_FreewayStarting` |
| [X]      | [ ]       | `Service_FreewayTerminating` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |


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
* `PDriver`
* `SharedCLibrary`


