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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Internet service |
| [X]      | [ ]       | License info |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*SysLog` |
| [X]      | [ ]       | `*SysLog_Flush` |
| [X]      | [ ]       | `*SysLog_PollPeriod` |
| [X]      | [ ]       | `*SysLog_Status` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `SysLog_LogMessage` (&4C880) |
| [X]      | [ ]       | `SysLog_GetLogLevel` (&4C881) |
| [X]      | [ ]       | `SysLog_FlushLog` (&4C882) |
| [X]      | [ ]       | `SysLog_SetLogLevel` (&4C883) |
| [X]      | [ ]       | `SysLog_LogUnstamped` (&4C884) |
| [X]      | [ ]       | `SysLog_Indent` (&4C885) |
| [X]      | [ ]       | `SysLog_UnIndent` (&4C886) |
| [X]      | [ ]       | `SysLog_NoIndent` (&4C887) |
| [X]      | [ ]       | `SysLog_OpenSessionLog` (&4C888) |
| [X]      | [ ]       | `SysLog_CloseSessionLog` (&4C889) |
| [X]      | [ ]       | `SysLog_LogData` (&4C88A) |
| [X]      | [ ]       | `SysLog_LogFormatted` (&4C88B) |
| [X]      | [ ]       | `SysLog_ReadErrorMessage` (&4C88C) |
| [X]      | [ ]       | `SysLog_LogComplete` (&4C88D) |
| [X]      | [ ]       | `SysLog_IRQMode` (&4C88E) |
| [X]      | [ ]       | `SysLog_LogCharacter` (&4C88F) |
| [X]      | [ ]       | `SysLog_Control` (&4C890) |
| [X]      | [ ]       | `SysLog_Enumerate` (&4C891) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_InternetStatus` |
| [X]      | [ ]       | `Service_InternetVars` |
| [X]      | [ ]       | `Service_ShutDown` |
| [X]      | [ ]       | `Service_ShutDownDismounting` |
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `EventV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Event_Internet` |


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |


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


