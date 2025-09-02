# Module: ShareFS

## Discovered features


* Does directory access
* Does file access
* Has background processing
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


* Desktop filer icon
* Filesystem
* Freeway resources
* Internet service
* Resourcefs files

### Commands


* `*Configure ShareBoot`
* `*Desktop_ShareFSFiler`
* `*Dismount`
* `*Free`
* `*Share`
* `*ShareFS`
* `*ShareFSCache`
* `*ShareFSCacheType`
* `*ShareFSIcon`
* `*ShareFSLogoff`
* `*ShareFSLogon`
* `*ShareFSWindow`
* `*Shares`
* `*UnShare`


### SWIs


* `ShareFS_CreateShare` (&47AC0)
* `ShareFS_StopShare` (&47AC1)
* `ShareFS_EnumerateShares` (&47AC2)
* `ShareFS_IdentifyShare` (&47AC3)


### Services


* `Service_DCIProtocolStatus`
* `Service_DiscDismounted`
* `Service_FSRedeclare`
* `Service_FilerDying`
* `Service_FreewayStarting`
* `Service_FreewayTerminating`
* `Service_InternetStatus`
* `Service_PostInit`
* `Service_ShutDownComplete`
* `Service_StartFiler`
* `Service_StartedFiler`


### Vectors


* `EventV`
* `UpCallV`


### Events


* `Event_Internet`


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_RemoteFSExport`
* `Service_RemoteFSVolume`
* `Service_ShareDStarting`
* `Service_ShareDTerminating`
* `Service_Sharing`


### Vectors


* `?`
* `EconetV`


### Events


*None*


### UpCalls


* `UpCall_MediaNotKnown`
* `UpCall_MediaSearchEnd`
* `UpCall_ModifyingFile`


### Modules


* `Free`
* `Freeway`
* `Hourglass`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Socket`
* `Wimp`


