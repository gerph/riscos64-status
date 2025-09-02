# Module: SoundChannels

## Discovered features


* Has nvram state
* Has services
* Has services fast
* Has sound output
* Has swis
* Uses console output
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
| [ ]      | [ ]       | `*ChannelVoice` |
| [ ]      | [ ]       | `*Configure SoundDefault` |
| [ ]      | [ ]       | `*Sound` |
| [ ]      | [ ]       | `*Tuning` |
| [ ]      | [ ]       | `*Voices` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Sound_Volume` (&40180) |
| [ ]      | [ ]       | `Sound_SoundLog` (&40181) |
| [ ]      | [ ]       | `Sound_LogScale` (&40182) |
| [ ]      | [ ]       | `Sound_InstallVoice` (&40183) |
| [ ]      | [ ]       | `Sound_RemoveVoice` (&40184) |
| [ ]      | [ ]       | `Sound_AttachVoice` (&40185) |
| [ ]      | [ ]       | `Sound_ControlPacked` (&40186) |
| [ ]      | [ ]       | `Sound_Tuning` (&40187) |
| [ ]      | [ ]       | `Sound_Pitch` (&40188) |
| [ ]      | [ ]       | `Sound_Control` (&40189) |
| [ ]      | [ ]       | `Sound_AttachNamedVoice` (&4018A) |
| [ ]      | [ ]       | `Sound_ReadControlBlock` (&4018B) |
| [ ]      | [ ]       | `Sound_WriteControlBlock` (&4018C) |


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
| [ ]      | [ ]       | `Service_SoundControl` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Sound`


