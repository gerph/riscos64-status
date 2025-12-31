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
| [ ]      | [ ]       | Start as an application |
| [X]      | [ ]       | Can register filesystem |
| [X]      | [ ]       | Can deregister filesystem |
| [ ]      | [ ]       | Can show free for filesystem |
| [ ]      | [ ]       | Can show free for path |
| [ ]      | [ ]       | Deregister filesystem closes open windows |
| [>]      | [ ]       | Internal support for ADFS |
| [>]      | [ ]       | Internal support for RamFS |
| [>]      | [ ]       | Internal support for SCSIFS |
| [>]      | [ ]       | Internal support for NetFS |
| [ ]      | [ ]       | Internal support for NFS |
| [>]      | [ ]       | Internal support for PCCardFS |
| [ ]      | [ ]       | Traps UpCallV to update windows |


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


