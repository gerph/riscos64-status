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


* Hardware driver

### Commands


*None*


### SWIs


* `Parallel_HardwareAddress` (&42EC0)
* `Parallel_Op` (&42EC1)


### Services


* `Service_DeviceDead`
* `Service_DeviceFSDying`
* `Service_DeviceFSStarting`
* `Service_Portable`
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


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


* `UpCall_DeviceError`
* `UpCall_MediaNotPresent`
* `UpCall_MediaSearchEndMessage`


### Modules


* `Buffer`
* `DeviceFS`
* `MessageTrans`
* `Portable`


