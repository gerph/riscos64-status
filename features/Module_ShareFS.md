# Module: ShareFS

## Discovered features


* Has background processing
* Has directory access
* Has file access
* Has nvram state
* Has services
* Has services fast
* Has swis
* Is c
* Is desktop application
* Sets variables
* Uses internet
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Desktop filer icon |
| [X]      | [ ]       | Filesystem |
| [X]      | [ ]       | Freeway resources |
| [X]      | [ ]       | Internet service |
| [X]      | [ ]       | Resourcefs files |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Configure ShareBoot` |
| [X]      | [ ]       | `*Desktop_ShareFSFiler` |
| [X]      | [ ]       | `*Dismount` |
| [X]      | [ ]       | `*Free` |
| [X]      | [ ]       | `*Share` |
| [X]      | [ ]       | `*ShareFS` |
| [X]      | [ ]       | `*ShareFSCache` |
| [X]      | [ ]       | `*ShareFSCacheType` |
| [X]      | [ ]       | `*ShareFSIcon` |
| [X]      | [ ]       | `*ShareFSLogoff` |
| [X]      | [ ]       | `*ShareFSLogon` |
| [X]      | [ ]       | `*ShareFSWindow` |
| [X]      | [ ]       | `*Shares` |
| [X]      | [ ]       | `*UnShare` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ShareFS_CreateShare` (&47AC0) |
| [X]      | [ ]       | `ShareFS_StopShare` (&47AC1) |
| [X]      | [ ]       | `ShareFS_EnumerateShares` (&47AC2) |
| [X]      | [ ]       | `ShareFS_IdentifyShare` (&47AC3) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_DCIProtocolStatus` |
| [X]      | [ ]       | `Service_DiscDismounted` |
| [X]      | [ ]       | `Service_FSRedeclare` |
| [X]      | [ ]       | `Service_FilerDying` |
| [X]      | [ ]       | `Service_FreewayStarting` |
| [X]      | [ ]       | `Service_FreewayTerminating` |
| [X]      | [ ]       | `Service_InternetStatus` |
| [X]      | [ ]       | `Service_PostInit` |
| [X]      | [ ]       | `Service_ShutDownComplete` |
| [X]      | [ ]       | `Service_StartFiler` |
| [X]      | [ ]       | `Service_StartedFiler` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `EventV` |
| [X]      | [ ]       | `UpCallV` |


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
| [X]      | [ ]       | `Service_RemoteFSExport` |
| [X]      | [ ]       | `Service_RemoteFSVolume` |
| [X]      | [ ]       | `Service_ShareDStarting` |
| [X]      | [ ]       | `Service_ShareDTerminating` |
| [X]      | [ ]       | `Service_Sharing` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `?` |
| [X]      | [ ]       | `EconetV` |


### Events


*None*


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `UpCall_MediaNotKnown` |
| [X]      | [ ]       | `UpCall_MediaSearchEnd` |
| [X]      | [ ]       | `UpCall_ModifyingFile` |


### Modules


* `Free`
* `Freeway`
* `Hourglass`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Socket`
* `Wimp`


