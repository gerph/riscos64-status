# Module: Traceroute

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

*None found*

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Traceroute_Start` (&53C40) |
| [X]      | [ ]       | `Traceroute_Check` (&53C41) |
| [X]      | [ ]       | `Traceroute_Status` (&53C42) |
| [X]      | [ ]       | `Traceroute_Discard` (&53C43) |
| [X]      | [ ]       | `Traceroute_Decode` (&53C44) |


### Services


*None*


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
* `SharedCLibrary`
* `Socket`


