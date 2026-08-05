# Module: RedrawManager

## Summary

RedrawManager is a redraw callback coordinator layered on the Wimp filter mechanism. Clients register callbacks with Redraw_AddCallBack/Redraw_RemoveCallBack; it hooks the dynamically allocated Wimp filter vector while present and announces its installation/removal through service calls.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has kernel collusion
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Desktop filter redraw |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*RedrawList` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Redraw_AddCallBack` (&82C80) |
| [X]      | [ ]       | `Redraw_RemoveCallBack` (&82C81) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_FilterManagerDying` |
| [X]      | [ ]       | `Service_FilterManagerInstalled` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_RedrawManagerDying` |
| [X]      | [ ]       | `Service_RedrawManagerInstalled` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Filter`
* `MessageTrans`
* `SharedCLibrary`
* `Wimp`


