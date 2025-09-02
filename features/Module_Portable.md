# Module: Portable

## Discovered features


* Has swis
* Is c

---

## Provides

### Functionality


*None found*

### Commands


*None*


### SWIs


* `Portable_Speed` (&42FC0)
* `Portable_Control` (&42FC1)
* `Portable_ReadBMUVariable` (&42FC2)
* `Portable_WriteBMUVariable` (&42FC3)
* `Portable_CommandBMU` (&42FC4)
* `Portable_ReadFeatures` (&42FC5)
* `Portable_Idle` (&42FC6)
* `Portable_Stop` (&42FC7)
* `Portable_Status` (&42FC8)


### Services


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_Portable`


### Vectors


*None*


### Events


* `Event_PortableBMU`


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


