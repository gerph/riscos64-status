# Module: PathUtils

## Summary

PathUtils is a small path-manipulation utility module. It enumerates a search path, joins path components and removes a component without requiring each caller to reimplement RISC OS path syntax.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has swis
* Is c
* Sets variables

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*AppPath` |
| [X]      | [ ]       | `*PrepPath` |
| [X]      | [ ]       | `*RemPath` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `PathUtils_EnumeratePath` (&53B80) |
| [X]      | [ ]       | `PathUtils_JoinPath` (&53B81) |
| [X]      | [ ]       | `PathUtils_RemovePath` (&53B82) |


### Services


*None*


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


