# Module: DHCPClient

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Uses internet
* Uses logging

---

## Provides

### Functionality


* Dci4 statistics
* Internet configuration

### Commands


* `*DHCP`
* `*DHCPStatus`


### SWIs


* `DHCPClient_Control` (&55E00)
* `DHCPClient_State` (&55E01)
* `DHCPClient_Enumerate` (&55E02)


### Services


* `Service_DCIDriverStatus`
* `Service_DCIProtocolStatus`
* `Service_InternetStatus`
* `Service_StatisticEnumerate`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_InternetStatus`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `RouterDiscovery`
* `SharedCLibrary`
* `Socket`
* `SysLog`
* `Territory`


