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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Dci4 statistics |
| [X]      | [ ]       | Internet configuration |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*DHCP` |
| [X]      | [ ]       | `*DHCPStatus` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `DHCPClient_Control` (&55E00) |
| [X]      | [ ]       | `DHCPClient_State` (&55E01) |
| [X]      | [ ]       | `DHCPClient_Enumerate` (&55E02) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIDriverStatus` |
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_InternetStatus` |
| [X]      | [ ]       | `Service_StatisticEnumerate` |


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
| [X]      | [ ]       | `Service_InternetStatus` |


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


