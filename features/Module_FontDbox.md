# Module: FontDbox

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
| [X]      | [ ]       | `FontDbox_ClassSWI` (&82A00) |
| [X]      | [ ]       | `FontDbox_PostFilter` (&82A01) |
| [X]      | [ ]       | `FontDbox_PreFilter` (&82A02) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_FontsChanged` |
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


* `Font`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Toolbox`
* `Wimp`
* `Window`


