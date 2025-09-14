# Module: RedrawManager

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


