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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Buffers |
| [ ]      | [ ]       | Filesystem |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `DeviceFS_Register` (&42740) |
| [ ]      | [ ]       | `DeviceFS_Deregister` (&42741) |
| [ ]      | [ ]       | `DeviceFS_RegisterObjects` (&42742) |
| [ ]      | [ ]       | `DeviceFS_DeregisterObjects` (&42743) |
| [ ]      | [ ]       | `DeviceFS_CallDevice` (&42744) |
| [ ]      | [ ]       | `DeviceFS_Threshold` (&42745) |
| [ ]      | [ ]       | `DeviceFS_ReceivedCharacter` (&42746) |
| [ ]      | [ ]       | `DeviceFS_TransmitCharacter` (&42747) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FSRedeclare` |
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCallV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_DeviceDead` |
| [ ]      | [ ]       | `Service_DeviceFSCloseRequest` |
| [ ]      | [ ]       | `Service_DeviceFSDying` |
| [ ]      | [ ]       | `Service_DeviceFSStarting` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCallV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_DeviceOverRun` |


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_DeviceRxDataPresent` |
| [ ]      | [ ]       | `UpCall_ModifyingFile` |
| [ ]      | [ ]       | `UpCall_StreamClosed` |
| [ ]      | [ ]       | `UpCall_StreamCreated` |


### Modules


* `Buffer`
* `MessageTrans`


