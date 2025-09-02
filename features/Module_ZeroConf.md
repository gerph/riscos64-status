# Module: ZeroConf

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Is hardware specific
* Uses internet
* Uses logging

---

## Provides

### Functionality


* Dci4 statistics

### Commands


*None*


### SWIs


* `ZeroConf_Control` (&56A00)
* `ZeroConf_Status` (&56A01)
* `ZeroConf_DCI4Statistics` (&56A02)


### Services


* `Service_DCIDriverStatus`
* `Service_DCIProtocolStatus`
* `Service_InternetStatus`
* `Service_StatisticEnumerate`


### Vectors


* `EventV`


### Events


* `Event_Internet`


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_InternetStatus`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `Socket`
* `SysLog`


