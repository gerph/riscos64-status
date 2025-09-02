# Module: ReplaySupport

## Discovered features


* Does file access
* Has background processing
* Has dynamic code
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality


* Resourcefs files

### Commands


* `*ReplayCheckVer`
* `*ReplaySupportInfo`


### SWIs


* `Replay_RegisterSprites` (&48B00)
* `Replay_DeRegisterSprites` (&48B01)
* `Replay_TimebarPaintAddress` (&48B02)
* `Replay_Version` (&48B03)
* `Replay_ReadFileHeader` (&48B04)
* `Replay_ReadVideoCodecInfo` (&48B05)
* `Replay_ReadSoundCodecInfo` (&48B06)
* `Replay_SoundCode` (&48B07)
* `Replay_ReadAccessInfo` (&48B08)


### Services


* `Service_ResourceFSStarting`


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
* `ResourceFS`
* `SharedCLibrary`
* `SoundFile`


