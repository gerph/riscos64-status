# Module: RateTracker

## Summary

RateTracker is a policy module for SharedSound: once per second it enumerates active SharedSound handlers and sets the global sound-system rate to the highest requested rate, avoiding needless upsampling and protecting the best active source's quality.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has background processing
* Has services
* Has services fast
* Is c

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Sound driver |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*RateTrackerState` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_Sound` |
| [X]      | [ ]       | `Service_SoundControl` |


### Vectors


*None*


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
* `SharedSound`
* `Sound`


