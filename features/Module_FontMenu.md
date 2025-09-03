# Module: FontMenu

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
| [X]      | [ ]       | `FontMenu_ClassSWI` (&82A40) |
| [X]      | [ ]       | `FontMenu_PostFilter` (&82A41) |
| [X]      | [ ]       | `FontMenu_PreFilter` (&82A42) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ResourceFSStarting` |
| [X]      | [ ]       | `Service_ToolboxStarting` |
| [X]      | [ ]       | `Service_ToolboxSubMenu` |
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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ToolboxSubMenu` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Font`
* `Menu`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Toolbox`
* `Wimp`


