# Module: NFS

## Discovered features


* Has argument parsing
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses console input
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses internet

---

## Provides

### Functionality


* Filesystem
* Internet service

### Commands


* `*Bye`
* `*CacheSize`
* `*CacheTime`
* `*Dismount`
* `*Free`
* `*Logon`
* `*Mount`
* `*NFS`
* `*NFSBoot`
* `*NFSInfo`
* `*PacketSize`
* `*Timeout`


### SWIs


* `NFS_Mount` (&410C0)
* `NFS_MountList` (&410C1)
* `NFS_SetUser` (&410C2)
* `NFS_Dismount` (&410C3)
* `NFS_MountInfo` (&410C4)
* `NFS_FreeSpace` (&410C5)


### Services


* `Service_DCIProtocolStatus`
* `Service_FSRedeclare`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_DiscDismounted`
* `Service_NFS`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `Hourglass`
* `MessageTrans`
* `Resolver`
* `SharedCLibrary`
* `Socket`


