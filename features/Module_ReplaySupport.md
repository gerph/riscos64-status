# Module: ReplaySupport

## Discovered features


* Has background processing
* Has dynamic code
* Has file access
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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Resourcefs files |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*ReplayCheckVer` |
| [X]      | [ ]       | `*ReplaySupportInfo` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Replay_RegisterSprites` (&48B00) |
| [X]      | [ ]       | `Replay_DeRegisterSprites` (&48B01) |
| [X]      | [ ]       | `Replay_TimebarPaintAddress` (&48B02) |
| [X]      | [ ]       | `Replay_Version` (&48B03) |
| [X]      | [ ]       | `Replay_ReadFileHeader` (&48B04) |
| [X]      | [ ]       | `Replay_ReadVideoCodecInfo` (&48B05) |
| [X]      | [ ]       | `Replay_ReadSoundCodecInfo` (&48B06) |
| [X]      | [ ]       | `Replay_SoundCode` (&48B07) |
| [X]      | [ ]       | `Replay_ReadAccessInfo` (&48B08) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ResourceFSStarting` |


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


