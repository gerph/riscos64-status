# Module: Freeway

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses econet
* Uses internet
* Uses messagetrans

---

## Provides

### Functionality


* Internet service

### Commands


* `*FwShow`


### SWIs


* `Freeway_Register` (&47A80)
* `Freeway_Write` (&47A81)
* `Freeway_Read` (&47A82)
* `Freeway_Enumerate` (&47A83)
* `Freeway_Status` (&47A84)
* `Freeway_Serial` (&47A85)
* `Freeway_Remote` (&47A86)


### Services


* `Service_DCIDriverStatus`
* `Service_DCIProtocolStatus`
* `Service_InternetStatus`


### Vectors


* `?`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `?`


### Vectors


*None*


### Events


*None*


### UpCalls


* `UpCall_Freeway`


### Modules


* `Econet`
* `MessageTrans`
* `SharedCLibrary`
* `Socket`


