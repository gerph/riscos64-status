# Module: SaveAs

## Summary

SaveAs is the Toolbox save/export dialogue object. It handles the standard RISC OS drag-to-save protocol and reports the application's save selection through Toolbox events.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Accesses task memory
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
| [X]      | [ ]       | `SaveAs_ClassSWI` (&82BC0) |
| [X]      | [ ]       | `SaveAs_PostFilter` (&82BC1) |
| [X]      | [ ]       | `SaveAs_PreFilter` (&82BC2) |


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


* `Hourglass`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Toolbox`
* `Wimp`
* `Window`


