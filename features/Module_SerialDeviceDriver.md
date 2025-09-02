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


* Hardware driver
* Resourcefs files

### Commands


*None*


### SWIs


*None*


### Services


* `Service_DeviceFSCloseRequest`
* `Service_DeviceFSDying`
* `Service_DeviceFSStarting`
* `Service_Portable`
* `Service_Reset`
* `Service_ResourceFSStarting`
* `Service_SerialDevice`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_SerialDevice`


### Vectors


* `?`
* `INSV`
* `REMV`


### Events


* `Event_RS423Error`


### UpCalls


*None*


### Modules


* `DeviceFS`
* `MessageTrans`
* `Portable`
* `ResourceFS`


