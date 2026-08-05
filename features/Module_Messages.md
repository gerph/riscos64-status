# Module: Messages

## Summary

Messages is the UK/global message-resource provider. It registers its embedded message files in ResourceFS and restores them on ResourceFSStarting; MessageTrans then opens and translates these files for other components.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has application environment
* Has services
* Has services fast
* Uses econet

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Printer driver |
| [ ]      | [ ]       | Resourcefs files |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ResourceFSStarting` |


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


*None*


### Modules


* `ARM`
* `Econet`
* `MessageTrans`
* `PDriver`
* `ResourceFS`
* `Wimp`


