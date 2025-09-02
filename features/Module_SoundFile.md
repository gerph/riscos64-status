# Module: SoundFile

## Discovered features


* Has file access
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses heap dynamic area
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
| [X]      | [ ]       | `*SoundFileForceClose` |
| [X]      | [ ]       | `*SoundFileInfo` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `SoundFile_Open` (&4AEC0) |
| [X]      | [ ]       | `SoundFile_Close` (&4AEC1) |
| [X]      | [ ]       | `SoundFile_ReadData` (&4AEC2) |
| [X]      | [ ]       | `SoundFile_MiscOp` (&4AEC3) |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_SoundFileIdentify` |


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


