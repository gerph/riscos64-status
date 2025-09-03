# Module: Econet

## Discovered features


* Has background processing
* Has nvram state
* Has services
* Has swis
* Is hardware specific
* Uses console output
* Uses econet
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Station` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Econet_CreateReceive` (&40000) |
| [ ]      | [ ]       | `Econet_ExamineReceive` (&40001) |
| [ ]      | [ ]       | `Econet_ReadReceive` (&40002) |
| [ ]      | [ ]       | `Econet_AbandonReceive` (&40003) |
| [ ]      | [ ]       | `Econet_WaitForReception` (&40004) |
| [ ]      | [ ]       | `Econet_EnumerateReceive` (&40005) |
| [ ]      | [ ]       | `Econet_StartTransmit` (&40006) |
| [ ]      | [ ]       | `Econet_PollTransmit` (&40007) |
| [ ]      | [ ]       | `Econet_AbandonTransmit` (&40008) |
| [ ]      | [ ]       | `Econet_DoTransmit` (&40009) |
| [ ]      | [ ]       | `Econet_ReadLocalStationAndNet` (&4000A) |
| [ ]      | [ ]       | `Econet_ConvertStatusToString` (&4000B) |
| [ ]      | [ ]       | `Econet_ConvertStatusToError` (&4000C) |
| [ ]      | [ ]       | `Econet_ReadProtection` (&4000D) |
| [ ]      | [ ]       | `Econet_SetProtection` (&4000E) |
| [ ]      | [ ]       | `Econet_ReadStationNumber` (&4000F) |
| [ ]      | [ ]       | `Econet_PrintBanner` (&40010) |
| [ ]      | [ ]       | `Econet_ReadTransportType` (&40011) |
| [ ]      | [ ]       | `Econet_ReleasePort` (&40012) |
| [ ]      | [ ]       | `Econet_AllocatePort` (&40013) |
| [ ]      | [ ]       | `Econet_DeAllocatePort` (&40014) |
| [ ]      | [ ]       | `Econet_ClaimPort` (&40015) |
| [ ]      | [ ]       | `Econet_StartImmediate` (&40016) |
| [ ]      | [ ]       | `Econet_DoImmediate` (&40017) |
| [ ]      | [ ]       | `Econet_AbandonAndReadReceive` (&40018) |
| [ ]      | [ ]       | `Econet_Version` (&40019) |
| [ ]      | [ ]       | `Econet_NetworkState` (&4001A) |
| [ ]      | [ ]       | `Econet_PacketSize` (&4001B) |
| [ ]      | [ ]       | `Econet_ReadTransportName` (&4001C) |
| [ ]      | [ ]       | `Econet_InetRxDirect` (&4001D) |
| [ ]      | [ ]       | `Econet_EnumerateMap` (&4001E) |
| [ ]      | [ ]       | `Econet_EnumerateTransmit` (&4001F) |
| [ ]      | [ ]       | `Econet_HardwareAddresses` (&40020) |
| [ ]      | [ ]       | `Econet_NetworkParameters` (&40021) |


### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `EventV` |
| [ ]      | [ ]       | `IrqV` |
| [ ]      | [ ]       | `TickerV` |
| [ ]      | [ ]       | `UKSWIV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_Econet_OSProc` |


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ClaimFIQ` |
| [ ]      | [ ]       | `Service_EconetDying` |
| [ ]      | [ ]       | `Service_Portable` |
| [ ]      | [ ]       | `Service_ReAllocatePorts` |
| [ ]      | [ ]       | `Service_ReleaseFIQ` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `EconetV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |


### UpCalls


*None*


### Modules


* `Econet`
* `MessageTrans`
* `Podule`
* `Portable`


