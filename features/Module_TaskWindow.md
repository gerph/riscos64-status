# Module: TaskWindow

## Discovered features


* Does file access
* Has application environment
* Has argument parsing
* Has dynamic code
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


* Desktop filter

### Commands


* `*ShellCLI_Task`
* `*ShellCLI_TaskQuit`
* `*TaskWindow`


### SWIs


* `TaskWindow_TaskInfo` (&43380)
* `TaskWindow_TaskRegisters` (&43381)


### Services


* `Service_Memory`
* `Service_Reset`
* `Service_SwitchingOutputToSprite`
* `Service_TaskPageOut`
* `Service_WimpCloseDown`
* `Service_WimpReportError`


### Vectors


* `ByteV`
* `CNPV`
* `EventV`
* `RdchV`
* `UpCallV`
* `WordV`
* `WrchV`


### Events


* `Event_VSync`


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


