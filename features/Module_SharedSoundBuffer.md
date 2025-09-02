# Module: SharedSoundBuffer

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses heap dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Sound driver |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `SharedSoundBuffer_OpenStream` (&55FC0) |
| [X]      | [ ]       | `SharedSoundBuffer_CloseStream` (&55FC1) |
| [X]      | [ ]       | `SharedSoundBuffer_AddBlock` (&55FC2) |
| [X]      | [ ]       | `SharedSoundBuffer_PollWord` (&55FC3) |
| [X]      | [ ]       | `SharedSoundBuffer_Volume` (&55FC4) |
| [X]      | [ ]       | `SharedSoundBuffer_SampleRate` (&55FC5) |
| [X]      | [ ]       | `SharedSoundBuffer_ReturnSSHandle` (&55FC6) |
| [X]      | [ ]       | `SharedSoundBuffer_SetBuffer` (&55FC7) |
| [X]      | [ ]       | `SharedSoundBuffer_BufferStats` (&55FC8) |
| [X]      | [ ]       | `SharedSoundBuffer_Pause` (&55FC9) |
| [X]      | [ ]       | `SharedSoundBuffer_StreamEnd` (&55FCA) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
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


