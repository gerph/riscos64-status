# Module: SoundScheduler

## Discovered features


* Has services
* Has services fast
* Has sound output
* Has swis
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*QSound` |
| [ ]      | [ ]       | `*Tempo` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Sound_QInit` (&401C0) |
| [ ]      | [ ]       | `Sound_QSchedule` (&401C1) |
| [ ]      | [ ]       | `Sound_QRemove` (&401C2) |
| [ ]      | [ ]       | `Sound_QFree` (&401C3) |
| [ ]      | [ ]       | `Sound_QSDispatch` (&401C4) |
| [ ]      | [ ]       | `Sound_QTempo` (&401C5) |
| [ ]      | [ ]       | `Sound_QBeat` (&401C6) |
| [ ]      | [ ]       | `Sound_QInterface` (&401C7) |
| [ ]      | [ ]       | `Sound_QSchedule32` (&401C8) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_Sound` |


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
| [ ]      | [ ]       | `Service_Sound` |


### Vectors


*None*


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_Sound` |


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Sound`


