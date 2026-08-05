# Module: InternetTime

## Summary

InternetTime collects Internet/DCI network statistics and uses Internet events to update its state; it is the network-time/status support module rather than a transport driver.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
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
| [X]      | [ ]       | `InternetTime_DCI4Statistics` (&578C0) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
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


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Resolver`
* `SharedCLibrary`
* `Socket`
* `Territory`


