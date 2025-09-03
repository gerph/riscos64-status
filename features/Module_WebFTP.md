# Module: WebFTP

## Discovered features


* Has background processing
* Has swis
* Is c
* Uses internet

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Internet service |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*WebFTPinfo` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `WebFTP_Open` (&83BC0) |
| [X]      | [ ]       | `WebFTP_Status` (&83BC1) |
| [X]      | [ ]       | `WebFTP_Close` (&83BC2) |
| [X]      | [ ]       | `WebFTP_CloseIdle` (&83BC3) |
| [X]      | [ ]       | `WebFTP_4` (&83BC4) |


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


* `MessageTrans`
* `SharedCLibrary`
* `Socket`


