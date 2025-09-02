# Module: RouterDiscovery

## Discovered features


* Has argument parsing
* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Uses internet
* Uses logging

---

## Provides

### Functionality


* Dci4 statistics
* Internet configuration

### Commands


* `*RouterDiscovery`


### SWIs


* `RouterDiscovery_Control` (&57D80)
* `RouterDiscovery_Status` (&57D81)


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
* `RouterDiscovery`
* `SharedCLibrary`
* `Socket`
* `SysLog`


