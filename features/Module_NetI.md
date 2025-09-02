# Module: NetI

## Discovered features


* Has nvram state
* Has services
* Has services fast
* Has swis
* Is c
* Is hardware specific
* Uses internet
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Internet service |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*AddMap` |
| [X]      | [ ]       | `*Configure NetIAutoMap` |
| [X]      | [ ]       | `*DelMap` |
| [X]      | [ ]       | `*NetMap` |
| [X]      | [ ]       | `*NetProbe` |
| [X]      | [ ]       | `*NetStat` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Econet_CreateReceive` (&40000) |
| [X]      | [ ]       | `Econet_ExamineReceive` (&40001) |
| [X]      | [ ]       | `Econet_ReadReceive` (&40002) |
| [X]      | [ ]       | `Econet_AbandonReceive` (&40003) |
| [X]      | [ ]       | `Econet_WaitForReception` (&40004) |
| [X]      | [ ]       | `Econet_EnumerateReceive` (&40005) |
| [X]      | [ ]       | `Econet_StartTransmit` (&40006) |
| [X]      | [ ]       | `Econet_PollTransmit` (&40007) |
| [X]      | [ ]       | `Econet_AbandonTransmit` (&40008) |
| [X]      | [ ]       | `Econet_DoTransmit` (&40009) |
| [X]      | [ ]       | `Econet_ReadLocalStationAndNet` (&4000A) |
| [X]      | [ ]       | `Econet_ConvertStatusToString` (&4000B) |
| [X]      | [ ]       | `Econet_ConvertStatusToError` (&4000C) |
| [X]      | [ ]       | `Econet_ReadProtection` (&4000D) |
| [X]      | [ ]       | `Econet_SetProtection` (&4000E) |
| [X]      | [ ]       | `Econet_ReadStationNumber` (&4000F) |
| [X]      | [ ]       | `Econet_PrintBanner` (&40010) |
| [X]      | [ ]       | `Econet_ReadTransportType` (&40011) |
| [X]      | [ ]       | `Econet_ReleasePort` (&40012) |
| [X]      | [ ]       | `Econet_AllocatePort` (&40013) |
| [X]      | [ ]       | `Econet_DeAllocatePort` (&40014) |
| [X]      | [ ]       | `Econet_ClaimPort` (&40015) |
| [X]      | [ ]       | `Econet_StartImmediate` (&40016) |
| [X]      | [ ]       | `Econet_DoImmediate` (&40017) |
| [X]      | [ ]       | `Econet_AbandonAndReadReceive` (&40018) |
| [X]      | [ ]       | `Econet_Version` (&40019) |
| [X]      | [ ]       | `Econet_NetworkState` (&4001A) |
| [X]      | [ ]       | `Econet_PacketSize` (&4001B) |
| [X]      | [ ]       | `Econet_ReadTransportName` (&4001C) |
| [X]      | [ ]       | `Econet_InetRxDirect` (&4001D) |
| [X]      | [ ]       | `Econet_EnumerateMap` (&4001E) |
| [X]      | [ ]       | `Econet_EnumerateTransmit` (&4001F) |
| [X]      | [ ]       | `Econet_HardwareAddresses` (&40020) |
| [X]      | [ ]       | `Econet_NetworkParameters` (&40021) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIDriverStatus` |
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_EconetDying` |
| [X]      | [ ]       | `Service_InternetStatus` |
| [X]      | [ ]       | `Service_MessageFileClosed` |
| [X]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |


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
| [X]      | [ ]       | `Service_InternetStatus` |


### Vectors


*None*


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `Socket`


