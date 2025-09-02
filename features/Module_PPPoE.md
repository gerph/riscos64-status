# Module: PPPoE

## Discovered features


* Has argument parsing
* Has background processing
* Has services
* Has services fast
* Has swis
* Is c

---

## Provides

### Functionality


* Ppp server
* Ppp transport

### Commands


* `*PPPoEClient`
* `*PPPoEInfo`
* `*PPPoELog`
* `*PPPoEServer`
* `*PPPoEStop`


### SWIs


* `PPPoE_Transmit` (&58140)


### Services


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_EnumerateNetworkDrivers`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `GenericPPP`
* `Mbuf`
* `MessageTrans`
* `PPPServerConfig`
* `SharedCLibrary`


