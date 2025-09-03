# Module: Switcher

## Discovered features


* Has nvram state
* Has services
* Has services fast
* Has swis
* Is desktop application
* Sets variables
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Default desktop application |
| [ ]      | [ ]       | Desktop filer icon |
| [ ]      | [ ]       | License info |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Desktop_ConfirmShutdown` |
| [ ]      | [ ]       | `*Desktop_TaskManager` |
| [ ]      | [ ]       | `*StartDesktopTask` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `TaskManager_TaskNameFromHandle` (&42680) |
| [ ]      | [ ]       | `TaskManager_EnumerateTasks` (&42681) |
| [ ]      | [ ]       | `TaskManager_Shutdown` (&42682) |
| [ ]      | [ ]       | `TaskManager_StartTask` (&42683) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_DynamicAreaCreate` |
| [ ]      | [ ]       | `Service_DynamicAreaRemove` |
| [ ]      | [ ]       | `Service_DynamicAreaRenumber` |
| [ ]      | [ ]       | `Service_FilerDying` |
| [ ]      | [ ]       | `Service_MemoryMoved` |
| [ ]      | [ ]       | `Service_MessageFileClosed` |
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartFiler` |
| [ ]      | [ ]       | `Service_StartWimp` |
| [ ]      | [ ]       | `Service_StartedWimp` |
| [ ]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `KEYV` |
| [ ]      | [ ]       | `UpCallV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |
| [ ]      | [ ]       | `Service_ShutDown` |
| [ ]      | [ ]       | `Service_ShutDownComplete` |
| [ ]      | [ ]       | `Service_ShutDownDismounting` |
| [ ]      | [ ]       | `Service_StartedFiler` |
| [ ]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Font`
* `Hourglass`
* `MessageTrans`
* `Portable`
* `Squash`
* `TaskManager`
* `Wimp`


