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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Filesystem |
| [X]      | [ ]       | Internet service |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Bye` |
| [X]      | [ ]       | `*CacheSize` |
| [X]      | [ ]       | `*CacheTime` |
| [X]      | [ ]       | `*Dismount` |
| [X]      | [ ]       | `*Free` |
| [X]      | [ ]       | `*Logon` |
| [X]      | [ ]       | `*Mount` |
| [X]      | [ ]       | `*NFS` |
| [X]      | [ ]       | `*NFSBoot` |
| [X]      | [ ]       | `*NFSInfo` |
| [X]      | [ ]       | `*PacketSize` |
| [X]      | [ ]       | `*Timeout` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `NFS_Mount` (&410C0) |
| [X]      | [ ]       | `NFS_MountList` (&410C1) |
| [X]      | [ ]       | `NFS_SetUser` (&410C2) |
| [X]      | [ ]       | `NFS_Dismount` (&410C3) |
| [X]      | [ ]       | `NFS_MountInfo` (&410C4) |
| [X]      | [ ]       | `NFS_FreeSpace` (&410C5) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_FSRedeclare` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DiscDismounted` |
| [X]      | [ ]       | `Service_NFS` |


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


