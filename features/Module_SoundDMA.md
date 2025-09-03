# Module: SoundDMA

## Discovered features


* Has nvram state
* Has services
* Has services fast
* Has swis
* Is hardware specific
* Uses console output
* Uses dynamic area
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
| [ ]      | [ ]       | `*Audio` |
| [ ]      | [ ]       | `*Configure SoundSystem` |
| [ ]      | [ ]       | `*SoundGain` |
| [ ]      | [ ]       | `*Speaker` |
| [ ]      | [ ]       | `*Stereo` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Sound_Configure` (&40140) |
| [ ]      | [ ]       | `Sound_Enable` (&40141) |
| [ ]      | [ ]       | `Sound_Stereo` (&40142) |
| [ ]      | [ ]       | `Sound_Speaker` (&40143) |
| [ ]      | [ ]       | `Sound_Mode` (&40144) |
| [ ]      | [ ]       | `Sound_LinearHandler` (&40145) |
| [ ]      | [ ]       | `Sound_SampleRate` (&40146) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Portable` |
| [ ]      | [ ]       | `Service_Reset` |


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


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Portable`
* `Sound`


