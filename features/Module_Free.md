# Module: Free

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/freenew.html)

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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Default desktop application |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Desktop_Free` |
| [ ]      | [ ]       | `*ShowFree` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Free_Register` (&444C0) |
| [ ]      | [ ]       | `Free_DeRegister` (&444C1) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_MemoryMoved` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartWimp` |
| [ ]      | [ ]       | `Service_StartedWimp` |


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


*None*


### Modules


* `ADFS`
* `MessageTrans`
* `NetFS`
* `NFS`
* `RamFS`
* `SCSIFS`
* `Wimp`


