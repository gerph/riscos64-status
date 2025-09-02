# Module: Freeway

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses econet
* Uses internet
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Internet service |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*FwShow` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Freeway_Register` (&47A80) |
| [X]      | [ ]       | `Freeway_Write` (&47A81) |
| [X]      | [ ]       | `Freeway_Read` (&47A82) |
| [X]      | [ ]       | `Freeway_Enumerate` (&47A83) |
| [X]      | [ ]       | `Freeway_Status` (&47A84) |
| [X]      | [ ]       | `Freeway_Serial` (&47A85) |
| [X]      | [ ]       | `Freeway_Remote` (&47A86) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIDriverStatus` |
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_InternetStatus` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |


### Vectors


*None*


### Events


*None*


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `UpCall_Freeway` |


### Modules


* `Econet`
* `MessageTrans`
* `SharedCLibrary`
* `Socket`


