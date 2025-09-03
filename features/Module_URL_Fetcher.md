# Module: URL_Fetcher

## Discovered features


* Has kernel collusion
* Has swis
* Is c
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Resourcefs files |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*URLProtoShow` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `URL_Register` (&83E00) |
| [X]      | [ ]       | `URL_GetURL` (&83E01) |
| [X]      | [ ]       | `URL_Status` (&83E02) |
| [X]      | [ ]       | `URL_ReadData` (&83E03) |
| [X]      | [ ]       | `URL_SetProxy` (&83E04) |
| [X]      | [ ]       | `URL_Stop` (&83E05) |
| [X]      | [ ]       | `URL_Deregister` (&83E06) |
| [X]      | [ ]       | `URL_ParseURL` (&83E07) |
| [X]      | [ ]       | `URL_EnumerateSchemes` (&83E08) |
| [X]      | [ ]       | `URL_EnumerateProxies` (&83E09) |
| [X]      | [ ]       | `URL_NOP10` (&83E0A) |
| [X]      | [ ]       | `URL_NOP11` (&83E0B) |
| [X]      | [ ]       | `URL_NOP12` (&83E0C) |
| [X]      | [ ]       | `URL_NOP13` (&83E0D) |
| [X]      | [ ]       | `URL_NOP14` (&83E0E) |
| [X]      | [ ]       | `URL_NOP15` (&83E0F) |
| [X]      | [ ]       | `URL_NOP16` (&83E10) |
| [X]      | [ ]       | `URL_NOP17` (&83E11) |
| [X]      | [ ]       | `URL_NOP18` (&83E12) |
| [X]      | [ ]       | `URL_NOP19` (&83E13) |
| [X]      | [ ]       | `URL_NOP20` (&83E14) |
| [X]      | [ ]       | `URL_NOP21` (&83E15) |
| [X]      | [ ]       | `URL_NOP22` (&83E16) |
| [X]      | [ ]       | `URL_NOP23` (&83E17) |
| [X]      | [ ]       | `URL_NOP24` (&83E18) |
| [X]      | [ ]       | `URL_NOP25` (&83E19) |
| [X]      | [ ]       | `URL_NOP26` (&83E1A) |
| [X]      | [ ]       | `URL_NOP27` (&83E1B) |
| [X]      | [ ]       | `URL_NOP28` (&83E1C) |
| [X]      | [ ]       | `URL_NOP29` (&83E1D) |
| [X]      | [ ]       | `URL_NOP30` (&83E1E) |
| [X]      | [ ]       | `URL_NOP31` (&83E1F) |
| [X]      | [ ]       | `URL_ProtocolRegister` (&83E20) |
| [X]      | [ ]       | `URL_ProtocolDeregister` (&83E21) |


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
| [X]      | [ ]       | `Service_URLProtocolModule` |
| [X]      | [ ]       | `Service_URLProtocolModuleProtocol` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `InetServices`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`


