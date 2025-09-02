# Module: SharedSound

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis

---

## Provides

### Functionality


* License info
* Sound driver

### Commands


*None*


### SWIs


* `SharedSound_InstallHandler` (&4B440)
* `SharedSound_RemoveHandler` (&4B441)
* `SharedSound_HandlerInfo` (&4B442)
* `SharedSound_HandlerVolume` (&4B443)
* `SharedSound_HandlerSampleType` (&4B444)
* `SharedSound_HandlerPause` (&4B445)
* `SharedSound_SampleRate` (&4B446)
* `SharedSound_InstallDriver` (&4B447)
* `SharedSound_RemoveDriver` (&4B448)
* `SharedSound_DriverInfo` (&4B449)
* `SharedSound_DriverVolume` (&4B44A)
* `SharedSound_DriverMixer` (&4B44B)
* `SharedSound_CheckDriver` (&4B44C)
* `SharedSound_ControlWord` (&4B44D)
* `SharedSound_HandlerType` (&4B44E)


### Services


* `Service_Sound`
* `Service_TaskManagerAcknowledgements`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_Sound`
* `Service_TaskManagerAcknowledgements`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Sound`


