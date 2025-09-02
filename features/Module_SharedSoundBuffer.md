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


* Sound driver

### Commands


*None*


### SWIs


* `SharedSoundBuffer_OpenStream` (&55FC0)
* `SharedSoundBuffer_CloseStream` (&55FC1)
* `SharedSoundBuffer_AddBlock` (&55FC2)
* `SharedSoundBuffer_PollWord` (&55FC3)
* `SharedSoundBuffer_Volume` (&55FC4)
* `SharedSoundBuffer_SampleRate` (&55FC5)
* `SharedSoundBuffer_ReturnSSHandle` (&55FC6)
* `SharedSoundBuffer_SetBuffer` (&55FC7)
* `SharedSoundBuffer_BufferStats` (&55FC8)
* `SharedSoundBuffer_Pause` (&55FC9)
* `SharedSoundBuffer_StreamEnd` (&55FCA)


### Services


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


