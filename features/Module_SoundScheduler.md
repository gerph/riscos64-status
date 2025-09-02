# Module: SoundScheduler

## Discovered features


* Does sound output
* Has services
* Has services fast
* Has swis
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


* `*QSound`
* `*Tempo`


### SWIs


* `Sound_QInit` (&401C0)
* `Sound_QSchedule` (&401C1)
* `Sound_QRemove` (&401C2)
* `Sound_QFree` (&401C3)
* `Sound_QSDispatch` (&401C4)
* `Sound_QTempo` (&401C5)
* `Sound_QBeat` (&401C6)
* `Sound_QInterface` (&401C7)
* `Sound_QSchedule32` (&401C8)


### Services


* `Service_Reset`
* `Service_Sound`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_Sound`


### Vectors


*None*


### Events


* `Event_Sound`


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Sound`


