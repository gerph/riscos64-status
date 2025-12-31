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
| [ ]      | [ ]       | Desktop control icon |
| [ ]      | [ ]       | License info window |
| [ ]      | [ ]       | Displays running tasks |
| [ ]      | [ ]       | Displays memory usage for tasks |
| [ ]      | [ ]       | Displays module tasks separately |
| [ ]      | [ ]       | Tracks task initialisation and shutdown |
| [ ]      | [ ]       | Performs desktop shutdown |
| [ ]      | [ ]       | Displays next and free memory |
| [ ]      | [ ]       | Displays dynamic area usage |
| [ ]      | [ ]       | Tracks dynamic area creation and removal |
| [ ]      | [ ]       | Tracks dynamic area resizes |
| [ ]      | [ ]       | Handles TaskWindow hot key |
| [ ]      | [ ]       | Handles Command prompt hot key |
| [ ]      | [ ]       | Can quit applications |
| [ ]      | [ ]       | Confirmation of shutdown is configurable |
| [ ]      | [ ]       | Reboot option after shutdown |
| [ ]      | [ ]       | Automated reboot after shutdown is supported |
| [ ]      | [ ]       | Automated poweroff after shutdown is supported |
| [ ]      | [ ]       | Displays OS version in info box |
| [ ]      | [ ]       | Can launch !Configure |
| [ ]      | [ ]       | Can issue `Wimp_StartTask` queued from outside desktop |
| [ ]      | [ ]       | Can run commands from menu |


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


