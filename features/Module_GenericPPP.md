# Module: GenericPPP

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Is hardware specific
* Sets variables
* Uses internet

---

## Provides

### Functionality


* Dci4 driver

### Commands


*None*


### SWIs


* `GenericPPP_Register` (&58380)
* `GenericPPP_Deregister` (&58381)
* `GenericPPP_GetInfo` (&58382)
* `GenericPPP_ShowState` (&58383)
* `GenericPPP_4` (&58384)
* `GenericPPP_5` (&58385)
* `GenericPPP_6` (&58386)
* `GenericPPP_7` (&58387)
* `GenericPPP_8` (&58388)
* `GenericPPP_9` (&58389)
* `GenericPPP_10` (&5838A)
* `GenericPPP_11` (&5838B)
* `GenericPPP_12` (&5838C)
* `GenericPPP_13` (&5838D)
* `GenericPPP_14` (&5838E)
* `GenericPPP_15` (&5838F)
* `GenericPPP_DCIVersion` (&58390)
* `GenericPPP_Inquire` (&58391)
* `GenericPPP_GetNetworkMTU` (&58392)
* `GenericPPP_SetNetworkMTU` (&58393)
* `GenericPPP_Transmit` (&58394)
* `GenericPPP_Filter` (&58395)
* `GenericPPP_Stats` (&58396)
* `GenericPPP_MulticastRequest` (&58397)


### Services


* `Service_DCIDriverStatus`
* `Service_DCIProtocolStatus`
* `Service_EnumerateNetworkDrivers`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_DCIDriverStatus`
* `Service_DCIFrameTypeFree`
* `Service_GenericPPPState`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Mbuf`
* `MessageTrans`
* `SharedCLibrary`
* `Socket`


