# Module: DCS

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
| [X]      | [ ]       | `DCS_ClassSWI` (&82A80) |
| [X]      | [ ]       | `DCS_PostFilter` (&82A81) |
| [X]      | [ ]       | `DCS_PreFilter` (&82A82) |
| [X]      | [ ]       | `DCS_3` (&82A83) |
| [X]      | [ ]       | `DCS_4` (&82A84) |
| [X]      | [ ]       | `DCS_5` (&82A85) |
| [X]      | [ ]       | `DCS_6` (&82A86) |
| [X]      | [ ]       | `DCS_7` (&82A87) |
| [X]      | [ ]       | `DCS_8` (&82A88) |
| [X]      | [ ]       | `DCS_9` (&82A89) |
| [X]      | [ ]       | `DCS_10` (&82A8A) |
| [X]      | [ ]       | `DCS_11` (&82A8B) |
| [X]      | [ ]       | `DCS_12` (&82A8C) |
| [X]      | [ ]       | `DCS_13` (&82A8D) |
| [X]      | [ ]       | `DCS_14` (&82A8E) |
| [X]      | [ ]       | `DCS_15` (&82A8F) |
| [X]      | [ ]       | `DCS_QuitClassSWI` (&82A90) |


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
* `Toolbox`
* `Wimp`
* `Window`


