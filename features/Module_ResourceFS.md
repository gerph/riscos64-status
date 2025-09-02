# Module: ResourceFS

## Discovered features


* Has services
* Has services fast
* Has swis
* Sets variables
* Uses messagetrans

---

## Provides

### Functionality


* Filesystem

### Commands


* `*ResourceFS`


### SWIs


* `ResourceFS_RegisterFiles` (&41B40)
* `ResourceFS_DeregisterFiles` (&41B41)


### Services


* `Service_FSRedeclare`
* `Service_TerritoryStarted`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_ResourceFSDying`
* `Service_ResourceFSStarted`
* `Service_ResourceFSStarting`


### Vectors


*None*


### Events


*None*


### UpCalls


* `UpCall_ModifyingFile`


### Modules


* `MessageTrans`
* `Territory`


