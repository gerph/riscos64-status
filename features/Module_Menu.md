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


* Resourcefs files
* Toolbox object

### Commands


*None*


### SWIs


* `Menu_ClassSWI` (&828C0)
* `Menu_PostFilter` (&828C1)
* `Menu_PreFilter` (&828C2)
* `Menu_UpdateTree` (&828C3)


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


* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Toolbox`
* `Wimp`


