# Module: ParallelDeviceDriver

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is hardware specific
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Hardware driver |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Parallel_HardwareAddress` (&42EC0) |
| [ ]      | [ ]       | `Parallel_Op` (&42EC1) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_DeviceDead` |
| [ ]      | [ ]       | `Service_DeviceFSDying` |
| [ ]      | [ ]       | `Service_DeviceFSStarting` |
| [ ]      | [ ]       | `Service_Portable` |
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


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_DeviceError` |
| [ ]      | [ ]       | `UpCall_MediaNotPresent` |
| [ ]      | [ ]       | `UpCall_MediaSearchEndMessage` |


### Modules


* `Buffer`
* `DeviceFS`
* `MessageTrans`
* `Portable`


