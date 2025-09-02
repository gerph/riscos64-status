# Module: RemotePrinterSupport

## Discovered features


* Does serial access
* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


*None*


### SWIs


* `RemotePrinterSupport_ReadPollwordLocation` (&47980)
* `RemotePrinterSupport_GetNextEvent` (&47981)
* `RemotePrinterSupport_ReadUniqueAddress` (&47982)
* `RemotePrinterSupport_Enable` (&47983)
* `RemotePrinterSupport_Disable` (&47984)
* `RemotePrinterSupport_EnableUpcalls` (&47985)
* `RemotePrinterSupport_DisableUpcalls` (&47986)


### Services


* `Service_FreewayStarting`
* `Service_FreewayTerminating`


### Vectors


* `?`


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


