# Module: WindowScroll

## Summary

WindowScroll is an EventV-based desktop helper that converts configured scrollable gadgets/windows into Wimp scroll requests. It remembers pending scroll state and understands parent/front/behind Wimp window relationships rather than providing a new window system.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Accesses task memory
* Has argument parsing
* Has services
* Has services fast
* Is c
* Is desktop application

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Default desktop application |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Desktop_WindowScroll` |
| [X]      | [ ]       | `*WimpScroll` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_StartWimp` |
| [X]      | [ ]       | `Service_StartedWimp` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `EventV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_Expansion` |


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


* `MessageTrans`
* `SharedCLibrary`
* `Wimp`


