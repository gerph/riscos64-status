# Module: PPPoTCP

## Discovered features


* Has argument parsing
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
| [X]      | [ ]       | Internet service |
| [X]      | [ ]       | Ppp server |
| [X]      | [ ]       | Ppp transport |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*PPPoTCPClient` |
| [X]      | [ ]       | `*PPPoTCPInfo` |
| [X]      | [ ]       | `*PPPoTCPLog` |
| [X]      | [ ]       | `*PPPoTCPServer` |
| [X]      | [ ]       | `*PPPoTCPStop` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `PPPoTCP_Transmit` (&583C0) |


### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `EventV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `GenericPPP`
* `MessageTrans`
* `PPPServerConfig`
* `Resolver`
* `SharedCLibrary`
* `Socket`


