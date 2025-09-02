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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Inet_DecodeError` |
| [X]      | [ ]       | `*Inet_ServiceByName` |
| [X]      | [ ]       | `*Inet_ServiceByPort` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `InetServices_GetServiceByPort` (&55640) |
| [X]      | [ ]       | `InetServices_GetServiceByName` (&55641) |
| [X]      | [ ]       | `InetServices_DecodeError` (&55642) |
| [X]      | [ ]       | `InetServices_GetServicesMenu` (&55643) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_InternetVars` |


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
| [X]      | [ ]       | `Service_InetServices` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


