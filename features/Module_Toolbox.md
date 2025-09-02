# Module: Toolbox

## Discovered features


* Has kernel collusion
* Has services
* Has services fast
* Has swis
* Is c
* Is desktop application
* Sets variables
* Uses dynamic area
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality


* Desktop filter
* Resourcefs files

### Commands


* `*Toolbox_Objects`


### SWIs


* `Toolbox_CreateObject` (&44EC0)
* `Toolbox_DeleteObject` (&44EC1)
* `Toolbox_CopyObject` (&44EC2)
* `Toolbox_ShowObject` (&44EC3)
* `Toolbox_HideObject` (&44EC4)
* `Toolbox_GetObjectInfo` (&44EC5)
* `Toolbox_ObjectMiscOp` (&44EC6)
* `Toolbox_SetClientHandle` (&44EC7)
* `Toolbox_GetClientHandle` (&44EC8)
* `Toolbox_GetObjectClass` (&44EC9)
* `Toolbox_GetParent` (&44ECA)
* `Toolbox_GetAncestor` (&44ECB)
* `Toolbox_GetTemplateName` (&44ECC)
* `Toolbox_RaiseToolboxEvent` (&44ECD)
* `Toolbox_GetSysInfo` (&44ECE)
* `Toolbox_Initialise` (&44ECF)
* `Toolbox_LoadResources` (&44ED0)
* `Toolbox_NULL` (&44ED1)
* `Toolbox_TimerOp` (&44EF8)
* `Toolbox_Memory` (&44EF9)
* `Toolbox_DeRegisterObjectModule` (&44EFA)
* `Toolbox_TemplateLookUp` (&44EFB)
* `Toolbox_GetInternalHandle` (&44EFC)
* `Toolbox_RegisterObjectModule` (&44EFD)
* `Toolbox_RegisterPreFilter` (&44EFE)
* `Toolbox_RegisterPostFilter` (&44EFF)


### Services


* `Service_DynamicAreaRenumber`
* `Service_FilterManagerInstalled`
* `Service_Memory`
* `Service_PostInit`
* `Service_ResourceFSStarting`
* `Service_WimpCloseDown`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `?`
* `Service_ToolboxDying`
* `Service_ToolboxSubMenu`
* `Service_ToolboxTaskBorn`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Filter`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Territory`
* `Toolbox`
* `Wimp`


