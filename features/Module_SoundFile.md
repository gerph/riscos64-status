# Module: SoundFile

## Discovered features


* Does file access
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


* Resourcefs files

### Commands


* `*SoundFileForceClose`
* `*SoundFileInfo`


### SWIs


* `SoundFile_Open` (&4AEC0)
* `SoundFile_Close` (&4AEC1)
* `SoundFile_ReadData` (&4AEC2)
* `SoundFile_MiscOp` (&4AEC3)


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


* `Service_SoundFileIdentify`


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


