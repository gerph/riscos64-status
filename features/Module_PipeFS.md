# Module: PipeFS

## Discovered features


* Does file access
* Has background processing
* Has services
* Has services fast
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality


* Filesystem

### Commands


* `*PipeCopy`


### SWIs


*None*


### Services


* `Service_FSRedeclare`


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


* `UpCall_ModifyingFile`
* `UpCall_Sleep`
* `UpCall_SleepNoMore`


### Modules


* `MessageTrans`


