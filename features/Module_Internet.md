# Module: Internet

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


*None found*

### Commands


* `*InetGateway`
* `*InetInfo`


### SWIs


* `Socket_Creat` (&41200)
* `Socket_Bind` (&41201)
* `Socket_Listen` (&41202)
* `Socket_Accept` (&41203)
* `Socket_Connect` (&41204)
* `Socket_Recv` (&41205)
* `Socket_Recvfrom` (&41206)
* `Socket_Recvmsg` (&41207)
* `Socket_Send` (&41208)
* `Socket_Sendto` (&41209)
* `Socket_Sendmsg` (&4120A)
* `Socket_Shutdown` (&4120B)
* `Socket_Setsockopt` (&4120C)
* `Socket_Getsockopt` (&4120D)
* `Socket_Getpeername` (&4120E)
* `Socket_Getsockname` (&4120F)
* `Socket_Close` (&41210)
* `Socket_Select` (&41211)
* `Socket_Ioctl` (&41212)
* `Socket_Read` (&41213)
* `Socket_Write` (&41214)
* `Socket_Stat` (&41215)
* `Socket_Readv` (&41216)
* `Socket_Writev` (&41217)
* `Socket_Gettsize` (&41218)
* `Socket_Sendtosm` (&41219)
* `Socket_Sysctl` (&4121A)
* `Socket_Accept_1` (&4121B)
* `Socket_Recvfrom_1` (&4121C)
* `Socket_Recvmsg_1` (&4121D)
* `Socket_Sendmsg_1` (&4121E)
* `Socket_Getpeername_1` (&4121F)
* `Socket_Getsockname_1` (&41220)
* `Socket_InternalLookup` (&41221)
* `Socket_Version` (&41222)
* `Socket_Filter` (&41223)


### Services


* `Service_DCIDriverStatus`
* `Service_InetServices`
* `Service_MbufManagerStatus`
* `Service_MessageFileClosed`
* `Service_PreReset`


### Vectors


* `?`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_DCIProtocolStatus`
* `Service_EnumerateNetworkDrivers`
* `Service_InternetStatus`


### Vectors


*None*


### Events


* `?`
* `Event_Internet`


### UpCalls


* `?`


### Modules


* `Econet`
* `InetServices`
* `Mbuf`
* `MessageTrans`
* `Resolver`
* `SharedCLibrary`
* `SysLog`
* `TaskWindow`


