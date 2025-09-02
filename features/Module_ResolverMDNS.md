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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Dci4 statistics |
| [X]      | [ ]       | Internet service |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ResolverMDNS_DCI4Statistics` (&57DC0) |
| [X]      | [ ]       | `ResolverMDNS_RegisterService` (&57DC1) |
| [X]      | [ ]       | `ResolverMDNS_DeregisterService` (&57DC2) |
| [X]      | [ ]       | `ResolverMDNS_Resolve` (&57DC3) |
| [X]      | [ ]       | `ResolverMDNS_GetHost` (&57DC4) |
| [X]      | [ ]       | `ResolverMDNS_BrowseStart` (&57DC5) |
| [X]      | [ ]       | `ResolverMDNS_BrowseRead` (&57DC6) |
| [X]      | [ ]       | `ResolverMDNS_BrowseStop` (&57DC7) |
| [X]      | [ ]       | `ResolverMDNS_GetDomains` (&57DC8) |
| [X]      | [ ]       | `ResolverMDNS_ConvertTXT` (&57DC9) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIDriverStatus` |
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_InternetStatus` |
| [X]      | [ ]       | `Service_InternetVars` |
| [X]      | [ ]       | `Service_StatisticEnumerate` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `EventV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_Internet` |


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


*None*


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_Internet` |


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `Socket`


