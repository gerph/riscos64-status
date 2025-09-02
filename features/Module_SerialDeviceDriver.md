# Module: SerialDeviceDriver

## Discovered features


* Has background processing
* Has nvram state
* Has services
* Has services fast
* Is hardware specific
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Hardware driver |
| [ ]      | [ ]       | Resourcefs files |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_DeviceFSCloseRequest` |
| [ ]      | [ ]       | `Service_DeviceFSDying` |
| [ ]      | [ ]       | `Service_DeviceFSStarting` |
| [ ]      | [ ]       | `Service_Portable` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_ResourceFSStarting` |
| [ ]      | [ ]       | `Service_SerialDevice` |


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
| [ ]      | [ ]       | `Service_SerialDevice` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |
| [ ]      | [ ]       | `INSV` |
| [ ]      | [ ]       | `REMV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_RS423Error` |


### UpCalls


*None*


### Modules


* `DeviceFS`
* `MessageTrans`
* `Portable`
* `ResourceFS`


