# Module: Free

## Discovered features


* Has argument parsing
* Has services
* Has services fast
* Has swis
* Is desktop application
* Sets variables
* Uses messagetrans

---

## Provides

### Functionality


* Default desktop application

### Commands


* `*Desktop_Free`
* `*ShowFree`


### SWIs


* `Free_Register` (&444C0)
* `Free_DeRegister` (&444C1)


### Services


* `Service_MemoryMoved`
* `Service_Reset`
* `Service_StartWimp`
* `Service_StartedWimp`


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


*None*


### Modules


* `ADFS`
* `MessageTrans`
* `NetFS`
* `NFS`
* `RamFS`
* `SCSIFS`
* `Wimp`


