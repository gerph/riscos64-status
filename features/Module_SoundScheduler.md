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
| [X]      | [ ]       | `*QSound` |
| [X]      | [ ]       | `*Tempo` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Sound_QInit` (&401C0) |
| [X]      | [ ]       | `Sound_QSchedule` (&401C1) |
| [X]      | [ ]       | `Sound_QRemove` (&401C2) |
| [X]      | [ ]       | `Sound_QFree` (&401C3) |
| [X]      | [ ]       | `Sound_QSDispatch` (&401C4) |
| [X]      | [ ]       | `Sound_QTempo` (&401C5) |
| [X]      | [ ]       | `Sound_QBeat` (&401C6) |
| [X]      | [ ]       | `Sound_QInterface` (&401C7) |
| [X]      | [ ]       | `Sound_QSchedule32` (&401C8) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_Reset` |
| [X]      | [ ]       | `Service_Sound` |


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
| [X]      | [ ]       | `Service_Sound` |


### Vectors


*None*


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_Sound` |


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Sound`


