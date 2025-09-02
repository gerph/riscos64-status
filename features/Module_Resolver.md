# Module: Resolver

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses dynamic area
* Uses heap dynamic area
* Uses internet
* Uses logging

---

## Provides

### Functionality


* Dci4 statistics
* Internet service
* Mdns service

### Commands


* `*ResolverConfig`


### SWIs


* `Resolver_GetHostByName` (&46000)
* `Resolver_GetHost` (&46001)
* `Resolver_GetCache` (&46002)
* `Resolver_CacheControl` (&46003)
* `Resolver_DCI4Statistics` (&46004)


### Services


* `Service_DCIDriverStatus`
* `Service_DCIProtocolStatus`
* `Service_InternetStatus`
* `Service_InternetVars`
* `Service_StatisticEnumerate`


### Vectors


* `?`
* `UpCallV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_InternetVars`


### Vectors


*None*


### Events


* `Event_Internet`


### UpCalls


* `UpCall_Sleep`


### Modules


* `Freeway`
* `InetServices`
* `LanMan`
* `MessageTrans`
* `ResolverMDNS`
* `SharedCLibrary`
* `Socket`
* `SysLog`


