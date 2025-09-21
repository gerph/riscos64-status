# Module: Internet

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/internet.html)

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Uses econet
* Uses logging
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
| [X]      | [ ]       | `*InetGateway` |
| [X]      | [ ]       | `*InetInfo` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Socket_Creat` (&41200) |
| [X]      | [ ]       | `Socket_Bind` (&41201) |
| [X]      | [ ]       | `Socket_Listen` (&41202) |
| [X]      | [ ]       | `Socket_Accept` (&41203) |
| [X]      | [ ]       | `Socket_Connect` (&41204) |
| [X]      | [ ]       | `Socket_Recv` (&41205) |
| [X]      | [ ]       | `Socket_Recvfrom` (&41206) |
| [X]      | [ ]       | `Socket_Recvmsg` (&41207) |
| [X]      | [ ]       | `Socket_Send` (&41208) |
| [X]      | [ ]       | `Socket_Sendto` (&41209) |
| [X]      | [ ]       | `Socket_Sendmsg` (&4120A) |
| [X]      | [ ]       | `Socket_Shutdown` (&4120B) |
| [X]      | [ ]       | `Socket_Setsockopt` (&4120C) |
| [X]      | [ ]       | `Socket_Getsockopt` (&4120D) |
| [X]      | [ ]       | `Socket_Getpeername` (&4120E) |
| [X]      | [ ]       | `Socket_Getsockname` (&4120F) |
| [X]      | [ ]       | `Socket_Close` (&41210) |
| [X]      | [ ]       | `Socket_Select` (&41211) |
| [X]      | [ ]       | `Socket_Ioctl` (&41212) |
| [X]      | [ ]       | `Socket_Read` (&41213) |
| [X]      | [ ]       | `Socket_Write` (&41214) |
| [X]      | [ ]       | `Socket_Stat` (&41215) |
| [X]      | [ ]       | `Socket_Readv` (&41216) |
| [X]      | [ ]       | `Socket_Writev` (&41217) |
| [X]      | [ ]       | `Socket_Gettsize` (&41218) |
| [X]      | [ ]       | `Socket_Sendtosm` (&41219) |
| [X]      | [ ]       | `Socket_Sysctl` (&4121A) |
| [X]      | [ ]       | `Socket_Accept_1` (&4121B) |
| [X]      | [ ]       | `Socket_Recvfrom_1` (&4121C) |
| [X]      | [ ]       | `Socket_Recvmsg_1` (&4121D) |
| [X]      | [ ]       | `Socket_Sendmsg_1` (&4121E) |
| [X]      | [ ]       | `Socket_Getpeername_1` (&4121F) |
| [X]      | [ ]       | `Socket_Getsockname_1` (&41220) |
| [X]      | [ ]       | `Socket_InternalLookup` (&41221) |
| [X]      | [ ]       | `Socket_Version` (&41222) |
| [X]      | [ ]       | `Socket_Filter` (&41223) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIDriverStatus` |
| [X]      | [ ]       | `Service_InetServices` |
| [X]      | [ ]       | `Service_MbufManagerStatus` |
| [X]      | [ ]       | `Service_MessageFileClosed` |
| [X]      | [ ]       | `Service_PreReset` |


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
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_EnumerateNetworkDrivers` |
| [X]      | [ ]       | `Service_InternetStatus` |


### Vectors


*None*


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |
| [X]      | [ ]       | `Event_Internet` |


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |


### Modules


* `Econet`
* `InetServices`
* `Mbuf`
* `MessageTrans`
* `Resolver`
* `SharedCLibrary`
* `SysLog`
* `TaskWindow`


