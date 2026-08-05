# Module: ClipboardHolder

## Summary

ClipboardHolder is the desktop clipboard holder. It owns copy/paste data, can save/restore it as files, processes Wimp messages, and can publish clipboard changes through the Freeway distributed-clipboard protocol.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Is desktop application
* Uses dynamic area
* Uses heap dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Default desktop application |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Desktop_ClipboardHolder` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ClipboardHolder_Copy` (&54040) |
| [X]      | [ ]       | `ClipboardHolder_Paste` (&54041) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_StartWimp` |
| [X]      | [ ]       | `Service_StartedWimp` |


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


* `MessageTrans`
* `SharedCLibrary`
* `Wimp`


