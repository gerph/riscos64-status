# Module: SerialDeviceDriver

## Summary

SerialDeviceDriver implements the standard serial port using supported 6551 and 710 controller variants. It registers serial streams with DeviceFS and uses BufferManager for interrupt-driven receive/transmit.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/serparpt.html)


## Relationships

RELATIONSHIPS-HERE

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


