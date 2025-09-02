# Module: NetFS

## Discovered features


* Has nvram state
* Has services
* Has services fast
* Has swis
* Uses console input
* Uses console output
* Uses econet
* Uses messagetrans

---

## Provides

### Functionality


* Filesystem

### Commands


* `*AddFS`
* `*Bye`
* `*Configure FS`
* `*Configure Lib`
* `*FS`
* `*Free`
* `*ListFS`
* `*Logon`
* `*Mount`
* `*Net`
* `*Pass`
* `*SDisc`


### SWIs


* `NetFS_ReadFSNumber` (&40040)
* `NetFS_SetFSNumber` (&40041)
* `NetFS_ReadFSName` (&40042)
* `NetFS_SetFSName` (&40043)
* `NetFS_4` (&40044)
* `NetFS_5` (&40045)
* `NetFS_ReadFSTimeouts` (&40046)
* `NetFS_SetFSTimeouts` (&40047)
* `NetFS_DoFSOp` (&40048)
* `NetFS_EnumerateFSList` (&40049)
* `NetFS_EnumerateFS` (&4004A)
* `NetFS_ConvertDate` (&4004B)
* `NetFS_DoFSOpToGivenFS` (&4004C)
* `NetFS_UpdateFSList` (&4004D)
* `NetFS_EnumerateFSContexts` (&4004E)
* `NetFS_ReadUserId` (&4004F)
* `NetFS_GetObjectUID` (&40050)
* `NetFS_EnableCache` (&40051)


### Services


* `Service_EconetDying`
* `Service_FSRedeclare`
* `Service_Portable`
* `Service_Reset`
* `Service_TerritoryStarted`
* `Service_UKCommand`


### Vectors


* `EventV`


### Events


* `Event_Econet_Rx`


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_DiscDismounted`
* `Service_NetFS`
* `Service_NetFSDying`


### Vectors


* `EconetV`


### Events


*None*


### UpCalls


*None*


### Modules


* `Econet`
* `MessageTrans`
* `NetFS`
* `Territory`


