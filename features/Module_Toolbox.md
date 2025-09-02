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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Desktop filter |
| [X]      | [ ]       | Resourcefs files |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Toolbox_Objects` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Toolbox_CreateObject` (&44EC0) |
| [X]      | [ ]       | `Toolbox_DeleteObject` (&44EC1) |
| [X]      | [ ]       | `Toolbox_CopyObject` (&44EC2) |
| [X]      | [ ]       | `Toolbox_ShowObject` (&44EC3) |
| [X]      | [ ]       | `Toolbox_HideObject` (&44EC4) |
| [X]      | [ ]       | `Toolbox_GetObjectInfo` (&44EC5) |
| [X]      | [ ]       | `Toolbox_ObjectMiscOp` (&44EC6) |
| [X]      | [ ]       | `Toolbox_SetClientHandle` (&44EC7) |
| [X]      | [ ]       | `Toolbox_GetClientHandle` (&44EC8) |
| [X]      | [ ]       | `Toolbox_GetObjectClass` (&44EC9) |
| [X]      | [ ]       | `Toolbox_GetParent` (&44ECA) |
| [X]      | [ ]       | `Toolbox_GetAncestor` (&44ECB) |
| [X]      | [ ]       | `Toolbox_GetTemplateName` (&44ECC) |
| [X]      | [ ]       | `Toolbox_RaiseToolboxEvent` (&44ECD) |
| [X]      | [ ]       | `Toolbox_GetSysInfo` (&44ECE) |
| [X]      | [ ]       | `Toolbox_Initialise` (&44ECF) |
| [X]      | [ ]       | `Toolbox_LoadResources` (&44ED0) |
| [X]      | [ ]       | `Toolbox_NULL` (&44ED1) |
| [X]      | [ ]       | `Toolbox_TimerOp` (&44EF8) |
| [X]      | [ ]       | `Toolbox_Memory` (&44EF9) |
| [X]      | [ ]       | `Toolbox_DeRegisterObjectModule` (&44EFA) |
| [X]      | [ ]       | `Toolbox_TemplateLookUp` (&44EFB) |
| [X]      | [ ]       | `Toolbox_GetInternalHandle` (&44EFC) |
| [X]      | [ ]       | `Toolbox_RegisterObjectModule` (&44EFD) |
| [X]      | [ ]       | `Toolbox_RegisterPreFilter` (&44EFE) |
| [X]      | [ ]       | `Toolbox_RegisterPostFilter` (&44EFF) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DynamicAreaRenumber` |
| [X]      | [ ]       | `Service_FilterManagerInstalled` |
| [X]      | [ ]       | `Service_Memory` |
| [X]      | [ ]       | `Service_PostInit` |
| [X]      | [ ]       | `Service_ResourceFSStarting` |
| [X]      | [ ]       | `Service_WimpCloseDown` |


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
| [X]      | [ ]       | `?` |
| [X]      | [ ]       | `Service_ToolboxDying` |
| [X]      | [ ]       | `Service_ToolboxSubMenu` |
| [X]      | [ ]       | `Service_ToolboxTaskBorn` |


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


