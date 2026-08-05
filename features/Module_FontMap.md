# Module: FontMap

## Summary

FontMap translates font identifiers/mappings for clients that need stable mapping across the Font Manager's current font set; it reloads resources and reacts to font changes.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Resourcefs files |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `FontMap_Translate` (&57F00) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_FontsChanged` |
| [X]      | [ ]       | `Service_ResourceFSStarting` |


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


* `Font`
* `Hourglass`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`


