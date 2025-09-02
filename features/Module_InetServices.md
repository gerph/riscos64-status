# Module: InetServices

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


* `*Inet_DecodeError`
* `*Inet_ServiceByName`
* `*Inet_ServiceByPort`


### SWIs


* `InetServices_GetServiceByPort` (&55640)
* `InetServices_GetServiceByName` (&55641)
* `InetServices_DecodeError` (&55642)
* `InetServices_GetServicesMenu` (&55643)


### Services


* `Service_InternetVars`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_InetServices`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


