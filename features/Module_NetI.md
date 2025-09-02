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


* Internet service

### Commands


* `*AddMap`
* `*Configure NetIAutoMap`
* `*DelMap`
* `*NetMap`
* `*NetProbe`
* `*NetStat`


### SWIs


* `Econet_CreateReceive` (&40000)
* `Econet_ExamineReceive` (&40001)
* `Econet_ReadReceive` (&40002)
* `Econet_AbandonReceive` (&40003)
* `Econet_WaitForReception` (&40004)
* `Econet_EnumerateReceive` (&40005)
* `Econet_StartTransmit` (&40006)
* `Econet_PollTransmit` (&40007)
* `Econet_AbandonTransmit` (&40008)
* `Econet_DoTransmit` (&40009)
* `Econet_ReadLocalStationAndNet` (&4000A)
* `Econet_ConvertStatusToString` (&4000B)
* `Econet_ConvertStatusToError` (&4000C)
* `Econet_ReadProtection` (&4000D)
* `Econet_SetProtection` (&4000E)
* `Econet_ReadStationNumber` (&4000F)
* `Econet_PrintBanner` (&40010)
* `Econet_ReadTransportType` (&40011)
* `Econet_ReleasePort` (&40012)
* `Econet_AllocatePort` (&40013)
* `Econet_DeAllocatePort` (&40014)
* `Econet_ClaimPort` (&40015)
* `Econet_StartImmediate` (&40016)
* `Econet_DoImmediate` (&40017)
* `Econet_AbandonAndReadReceive` (&40018)
* `Econet_Version` (&40019)
* `Econet_NetworkState` (&4001A)
* `Econet_PacketSize` (&4001B)
* `Econet_ReadTransportName` (&4001C)
* `Econet_InetRxDirect` (&4001D)
* `Econet_EnumerateMap` (&4001E)
* `Econet_EnumerateTransmit` (&4001F)
* `Econet_HardwareAddresses` (&40020)
* `Econet_NetworkParameters` (&40021)


### Services


* `Service_DCIDriverStatus`
* `Service_DCIProtocolStatus`
* `Service_EconetDying`
* `Service_InternetStatus`
* `Service_MessageFileClosed`
* `Service_Reset`


### Vectors


* `?`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `?`
* `Service_InternetStatus`


### Vectors


*None*


### Events


* `?`


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`
* `Socket`


