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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Ppp server |
| [X]      | [ ]       | Ppp transport |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*PPPoEClient` |
| [X]      | [ ]       | `*PPPoEInfo` |
| [X]      | [ ]       | `*PPPoELog` |
| [X]      | [ ]       | `*PPPoEServer` |
| [X]      | [ ]       | `*PPPoEStop` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `PPPoE_Transmit` (&58140) |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_EnumerateNetworkDrivers` |


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


