# Module: FileInfo

## Summary

FileInfo is a Toolbox object class for displaying/editing file information in standard UI. Like other Toolbox classes it has object/task/filter/create/show/hide lifecycle layers rather than owning the Wimp directly.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Resourcefs files |
| [X]      | [ ]       | Toolbox object |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `FileInfo_ClassSWI` (&82AC0) |
| [X]      | [ ]       | `FileInfo_PostFilter` (&82AC1) |
| [X]      | [ ]       | `FileInfo_PreFilter` (&82AC2) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ResourceFSStarting` |
| [X]      | [ ]       | `Service_ToolboxStarting` |
| [X]      | [ ]       | `Service_ToolboxTaskBorn` |
| [X]      | [ ]       | `Service_ToolboxTaskDied` |


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
* `ResourceFS`
* `SharedCLibrary`
* `Territory`
* `Toolbox`
* `Wimp`
* `Window`


