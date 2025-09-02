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


* Resourcefs files
* Toolbox object

### Commands


*None*


### SWIs


* `FontMenu_ClassSWI` (&82A40)
* `FontMenu_PostFilter` (&82A41)
* `FontMenu_PreFilter` (&82A42)


### Services


* `Service_ResourceFSStarting`
* `Service_ToolboxStarting`
* `Service_ToolboxSubMenu`
* `Service_ToolboxTaskBorn`
* `Service_ToolboxTaskDied`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_ToolboxSubMenu`


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


