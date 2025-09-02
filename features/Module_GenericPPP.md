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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Dci4 driver |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `GenericPPP_Register` (&58380) |
| [X]      | [ ]       | `GenericPPP_Deregister` (&58381) |
| [X]      | [ ]       | `GenericPPP_GetInfo` (&58382) |
| [X]      | [ ]       | `GenericPPP_ShowState` (&58383) |
| [X]      | [ ]       | `GenericPPP_4` (&58384) |
| [X]      | [ ]       | `GenericPPP_5` (&58385) |
| [X]      | [ ]       | `GenericPPP_6` (&58386) |
| [X]      | [ ]       | `GenericPPP_7` (&58387) |
| [X]      | [ ]       | `GenericPPP_8` (&58388) |
| [X]      | [ ]       | `GenericPPP_9` (&58389) |
| [X]      | [ ]       | `GenericPPP_10` (&5838A) |
| [X]      | [ ]       | `GenericPPP_11` (&5838B) |
| [X]      | [ ]       | `GenericPPP_12` (&5838C) |
| [X]      | [ ]       | `GenericPPP_13` (&5838D) |
| [X]      | [ ]       | `GenericPPP_14` (&5838E) |
| [X]      | [ ]       | `GenericPPP_15` (&5838F) |
| [X]      | [ ]       | `GenericPPP_DCIVersion` (&58390) |
| [X]      | [ ]       | `GenericPPP_Inquire` (&58391) |
| [X]      | [ ]       | `GenericPPP_GetNetworkMTU` (&58392) |
| [X]      | [ ]       | `GenericPPP_SetNetworkMTU` (&58393) |
| [X]      | [ ]       | `GenericPPP_Transmit` (&58394) |
| [X]      | [ ]       | `GenericPPP_Filter` (&58395) |
| [X]      | [ ]       | `GenericPPP_Stats` (&58396) |
| [X]      | [ ]       | `GenericPPP_MulticastRequest` (&58397) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIDriverStatus` |
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_EnumerateNetworkDrivers` |


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
| [X]      | [ ]       | `Service_DCIDriverStatus` |
| [X]      | [ ]       | `Service_DCIFrameTypeFree` |
| [X]      | [ ]       | `Service_GenericPPPState` |


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


