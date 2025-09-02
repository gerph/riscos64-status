# Module: DeviceFS

## Discovered features


* Has services
* Has services fast
* Has swis
* Sets variables
* Uses messagetrans

---

## Provides

### Functionality


* Buffers
* Filesystem

### Commands


*None*


### SWIs


* `DeviceFS_Register` (&42740)
* `DeviceFS_Deregister` (&42741)
* `DeviceFS_RegisterObjects` (&42742)
* `DeviceFS_DeregisterObjects` (&42743)
* `DeviceFS_CallDevice` (&42744)
* `DeviceFS_Threshold` (&42745)
* `DeviceFS_ReceivedCharacter` (&42746)
* `DeviceFS_TransmitCharacter` (&42747)


### Services


* `Service_FSRedeclare`
* `Service_Reset`


### Vectors


* `UpCallV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_DeviceDead`
* `Service_DeviceFSCloseRequest`
* `Service_DeviceFSDying`
* `Service_DeviceFSStarting`


### Vectors


* `UpCallV`


### Events


* `Event_DeviceOverRun`


### UpCalls


* `UpCall_DeviceRxDataPresent`
* `UpCall_ModifyingFile`
* `UpCall_StreamClosed`
* `UpCall_StreamCreated`


### Modules


* `Buffer`
* `MessageTrans`


