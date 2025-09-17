# Module: Portable

## Discovered features


* Has background processing
* Has nvram state
* Has services
* Has swis
* Is hardware specific
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Hardware driver |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*FreezeTime` |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `EventV` |
| [ ]      | [ ]       | `KEYV` |
| [ ]      | [ ]       | `PaletteV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_Keyboard` |


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_Portable` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `KEYV` |
| [ ]      | [ ]       | `PaletteV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_PortableBMU` |


### UpCalls


*None*


### Modules


* `ADFS`
* `IIC`
* `MessageTrans`
* `Portable`
* `ScreenBlanker`
* `Sound`


