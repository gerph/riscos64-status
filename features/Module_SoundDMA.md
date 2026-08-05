# Module: SoundDMA

## Summary

SoundDMA is the Level 0 hardware sound-output driver. It owns and refills the double-buffered sound DMA stream across the supported VIDC/MEMC/IOMD variants (including the VIDC1 A5000 path and VIDC20/IOMD or MEMC configurations). It accepts the legacy 8-bit mu-law multi-channel stream from SoundChannels, then—when configured for 16-bit output—converts it to signed 16-bit stereo, optionally lets an installed linear mixer overwrite or mix the buffer, and performs mono/oversampling processing. At each DMA buffer interrupt it invokes the registered Level 2 SoundScheduler before the Level 1 fill routine. This is the hardware-facing root of the traditional three-level RISC OS sound system.



## Relationships

RELATIONSHIPS-HERE

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
| [ ]      | [ ]       | Issues service on start and shutdown |
| [ ]      | [ ]       | Provides/calls Log handler |
| [ ]      | [ ]       | Provides/calls Linear handler |
| [ ]      | [ ]       | Provides/calls scheduler |
| [ ]      | [ ]       | Enumerates provided sample rates |
| [ ]      | [ ]       | Allows selection of sample rates |
| [ ]      | [ ]       | Can disable sound |
| [ ]      | [ ]       | Can route to speaker or jack |



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


