# Module: CDFS

## Discovered features


* Has cd access
* Has nvram state
* Has services
* Has services fast
* Has swis
* Sets variables
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Filesystem |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Bye` |
| [ ]      | [ ]       | `*CDDevices` |
| [ ]      | [ ]       | `*CDFS` |
| [ ]      | [ ]       | `*CDSpeed` |
| [ ]      | [ ]       | `*Configure CDROMBuffers` |
| [ ]      | [ ]       | `*Configure CDROMDrives` |
| [ ]      | [ ]       | `*Dismount` |
| [ ]      | [ ]       | `*Drive` |
| [ ]      | [ ]       | `*Eject` |
| [ ]      | [ ]       | `*Lock` |
| [ ]      | [ ]       | `*Mount` |
| [ ]      | [ ]       | `*Play` |
| [ ]      | [ ]       | `*PlayList` |
| [ ]      | [ ]       | `*PlayMSF` |
| [ ]      | [ ]       | `*Stop` |
| [ ]      | [ ]       | `*Supported` |
| [ ]      | [ ]       | `*Unlock` |
| [ ]      | [ ]       | `*Whichdisc` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `CDFS_ConvertDriveToDevice` (&41E80) |
| [ ]      | [ ]       | `CDFS_SetBufferSize` (&41E81) |
| [ ]      | [ ]       | `CDFS_GetBufferSize` (&41E82) |
| [ ]      | [ ]       | `CDFS_SetNumberOfDrives` (&41E83) |
| [ ]      | [ ]       | `CDFS_GetNumberOfDrives` (&41E84) |
| [ ]      | [ ]       | `CDFS_GiveFileType` (&41E85) |
| [ ]      | [ ]       | `CDFS_DescribeDisc` (&41E86) |
| [ ]      | [ ]       | `CDFS_WhereIsFile` (&41E87) |
| [ ]      | [ ]       | `CDFS_Truncation` (&41E88) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FSRedeclare` |


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
| [ ]      | [ ]       | `Service_DiscDismounted` |


### Vectors


*None*


### Events


*None*


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_MediaNotPresent` |
| [ ]      | [ ]       | `UpCall_MediaSearchEnd` |


### Modules


* `CD`
* `CDFS`
* `MessageTrans`
* `MimeMap`


