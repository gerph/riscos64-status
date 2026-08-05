# Module: Percussion

## Summary

Percussion is a SoundChannels voice-generator module, supplying percussion synthesis routines that SoundChannels can install and invoke for attached channels. It tracks SoundChannels coming and going, and refreshes localised voice names when ResourceFS starts.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has dynamic code
* Has services
* Has services fast
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Sound voice |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ResourceFSStarted` |
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


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Sound`


