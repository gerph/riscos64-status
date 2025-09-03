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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Dci4 statistics |
| [X]      | [ ]       | Internet service |
| [X]      | [ ]       | Mdns service |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*ResolverConfig` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Resolver_GetHostByName` (&46000) |
| [X]      | [ ]       | `Resolver_GetHost` (&46001) |
| [X]      | [ ]       | `Resolver_GetCache` (&46002) |
| [X]      | [ ]       | `Resolver_CacheControl` (&46003) |
| [X]      | [ ]       | `Resolver_DCI4Statistics` (&46004) |


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
| [X]      | [ ]       | `?` |
| [X]      | [ ]       | `UpCallV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_InternetVars` |


### Vectors


*None*


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_Internet` |


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `UpCall_Sleep` |


### Modules


* `Freeway`
* `InetServices`
* `LanMan`
* `MessageTrans`
* `ResolverMDNS`
* `SharedCLibrary`
* `Socket`
* `SysLog`


