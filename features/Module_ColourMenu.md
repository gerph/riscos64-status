# Module: ColourMenu

## Summary

ColourMenu is a Toolbox menu object for choosing colours; its pre/post filters and submenu service integration make it usable as a normal Toolbox menu hierarchy node.



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
| [X]      | [ ]       | `ColourMenu_ClassSWI` (&82980) |
| [X]      | [ ]       | `ColourMenu_PostFilter` (&82981) |
| [X]      | [ ]       | `ColourMenu_PreFilter` (&82982) |


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


* `Menu`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Toolbox`
* `Wimp`


