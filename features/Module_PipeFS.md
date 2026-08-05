# Module: PipeFS

## Summary

PipeFS is an in-memory pipe filing system used to expose producer/consumer streams through normal RISC OS file handles. It deliberately has no private SWI chunk; its public interface is the FileSwitch filing-system protocol.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/pipefs.html)


## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has background processing
* Has file access
* Has services
* Has services fast
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Filesystem |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*PipeCopy` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FSRedeclare` |


### Vectors


*None*


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_ModifyingFile` |
| [ ]      | [ ]       | `UpCall_Sleep` |
| [ ]      | [ ]       | `UpCall_SleepNoMore` |


### Modules


* `MessageTrans`


