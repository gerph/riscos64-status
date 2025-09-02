# Module: TaskWindow

## Discovered features


* Has application environment
* Has argument parsing
* Has dynamic code
* Has file access
* Has kernel collusion
* Has services
* Has services fast
* Has swis
* Is desktop application
* Sets variables
* Uses console input
* Uses console output
* Uses dynamic area
* Uses graphics output
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Desktop filter |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*ShellCLI_Task` |
| [ ]      | [ ]       | `*ShellCLI_TaskQuit` |
| [ ]      | [ ]       | `*TaskWindow` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `TaskWindow_TaskInfo` (&43380) |
| [ ]      | [ ]       | `TaskWindow_TaskRegisters` (&43381) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Memory` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_SwitchingOutputToSprite` |
| [ ]      | [ ]       | `Service_TaskPageOut` |
| [ ]      | [ ]       | `Service_WimpCloseDown` |
| [ ]      | [ ]       | `Service_WimpReportError` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ByteV` |
| [ ]      | [ ]       | `CNPV` |
| [ ]      | [ ]       | `EventV` |
| [ ]      | [ ]       | `RdchV` |
| [ ]      | [ ]       | `UpCallV` |
| [ ]      | [ ]       | `WordV` |
| [ ]      | [ ]       | `WrchV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_VSync` |


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


* `Filter`
* `FPEmulator`
* `MessageTrans`
* `Wimp`


