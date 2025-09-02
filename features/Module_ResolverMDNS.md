# Module: ResolverMDNS

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Uses internet

---

## Provides

### Functionality


* Dci4 statistics
* Internet service

### Commands


*None*


### SWIs


* `ResolverMDNS_DCI4Statistics` (&57DC0)
* `ResolverMDNS_RegisterService` (&57DC1)
* `ResolverMDNS_DeregisterService` (&57DC2)
* `ResolverMDNS_Resolve` (&57DC3)
* `ResolverMDNS_GetHost` (&57DC4)
* `ResolverMDNS_BrowseStart` (&57DC5)
* `ResolverMDNS_BrowseRead` (&57DC6)
* `ResolverMDNS_BrowseStop` (&57DC7)
* `ResolverMDNS_GetDomains` (&57DC8)
* `ResolverMDNS_ConvertTXT` (&57DC9)


### Services


* `Service_DCIDriverStatus`
* `Service_DCIProtocolStatus`
* `Service_InternetStatus`
* `Service_InternetVars`
* `Service_StatisticEnumerate`


### Vectors


* `EventV`


### Events


* `Event_Internet`


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


*None*


### Events


* `Event_Internet`


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `Socket`


