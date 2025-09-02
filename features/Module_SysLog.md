# Module: SysLog

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses dynamic area
* Uses heap dynamic area
* Uses internet

---

## Provides

### Functionality


* Internet service
* License info

### Commands


* `*SysLog`
* `*SysLog_Flush`
* `*SysLog_PollPeriod`
* `*SysLog_Status`


### SWIs


* `SysLog_LogMessage` (&4C880)
* `SysLog_GetLogLevel` (&4C881)
* `SysLog_FlushLog` (&4C882)
* `SysLog_SetLogLevel` (&4C883)
* `SysLog_LogUnstamped` (&4C884)
* `SysLog_Indent` (&4C885)
* `SysLog_UnIndent` (&4C886)
* `SysLog_NoIndent` (&4C887)
* `SysLog_OpenSessionLog` (&4C888)
* `SysLog_CloseSessionLog` (&4C889)
* `SysLog_LogData` (&4C88A)
* `SysLog_LogFormatted` (&4C88B)
* `SysLog_ReadErrorMessage` (&4C88C)
* `SysLog_LogComplete` (&4C88D)
* `SysLog_IRQMode` (&4C88E)
* `SysLog_LogCharacter` (&4C88F)
* `SysLog_Control` (&4C890)
* `SysLog_Enumerate` (&4C891)


### Services


* `Service_DCIProtocolStatus`
* `Service_InternetStatus`
* `Service_InternetVars`
* `Service_ShutDown`
* `Service_ShutDownDismounting`
* `Service_TaskManagerAcknowledgements`


### Vectors


* `EventV`


### Events


* `Event_Internet`


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_TaskManagerAcknowledgements`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `InetServices`
* `MessageTrans`
* `Resolver`
* `SharedCLibrary`
* `Socket`


