# Module: SoundScheduler

## Summary

SoundScheduler is the Level 2 timed event queue and dispatcher for the legacy sound system. SoundDMA invokes its installed dispatch entry once per sound buffer. Its SWIs initialise, schedule, remove and query time-wheel events; queued work can be a Sound_ControlPacked request, an arbitrary routine, or an SWI. It also generates the RISC OS Event_Sound Level 2 tempo event when the beat counter wraps.



## Relationships

RELATIONSHIPS-HERE

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


