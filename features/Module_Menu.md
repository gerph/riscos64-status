# Module: Menu

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Uses graphics output
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
| [X]      | [ ]       | `Menu_ClassSWI` (&828C0) |
| [X]      | [ ]       | `Menu_PostFilter` (&828C1) |
| [X]      | [ ]       | `Menu_PreFilter` (&828C2) |
| [X]      | [ ]       | `Menu_UpdateTree` (&828C3) |


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


* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Toolbox`
* `Wimp`


