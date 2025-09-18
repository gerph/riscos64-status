# Module: PortablePrototype

## Discovered features


* Has kernel collusion
* Has swis
* Is c

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
| [X]      | [ ]       | `Portable_Speed` (&42FC0) |
| [X]      | [ ]       | `Portable_Control` (&42FC1) |
| [X]      | [ ]       | `Portable_ReadBMUVariable` (&42FC2) |
| [X]      | [ ]       | `Portable_WriteBMUVariable` (&42FC3) |
| [X]      | [ ]       | `Portable_CommandBMU` (&42FC4) |
| [X]      | [ ]       | `Portable_ReadFeatures` (&42FC5) |
| [X]      | [ ]       | `Portable_Idle` (&42FC6) |
| [X]      | [ ]       | `Portable_Stop` (&42FC7) |
| [X]      | [ ]       | `Portable_Status` (&42FC8) |


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
| [X]      | [ ]       | `Service_Portable` |


### Vectors


*None*


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_PortableBMU` |


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


