# Module: ADFS


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/adfsnew.html)

## Discovered features


* Has argument parsing
* Has background processing
* Has disc access
* Has dynamic code
* Has nvram state
* Has services
* Has services fast
* Has swis
* Is hardware specific
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Filecore filesystem |
| [ ]      | [ ]       | Hardware driver |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*ADFS` |
| [ ]      | [ ]       | `*Configure ADFSDirCache` |
| [ ]      | [ ]       | `*Configure ADFSbuffers` |
| [ ]      | [ ]       | `*Configure Drive` |
| [ ]      | [ ]       | `*Configure Floppies` |
| [ ]      | [ ]       | `*Configure IDEDiscs` |
| [ ]      | [ ]       | `*Configure Step` |
| [ ]      | [ ]       | `*Format` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ADFS_DiscOp` (&40240) |
| [ ]      | [ ]       | `ADFS_HDC` (&40241) |
| [ ]      | [ ]       | `ADFS_Drives` (&40242) |
| [ ]      | [ ]       | `ADFS_FreeSpace` (&40243) |
| [ ]      | [ ]       | `ADFS_Retries` (&40244) |
| [ ]      | [ ]       | `ADFS_DescribeDisc` (&40245) |
| [ ]      | [ ]       | `ADFS_VetFormat` (&40246) |
| [ ]      | [ ]       | `ADFS_FlpProcessDCB` (&40247) |
| [ ]      | [ ]       | `ADFS_ControllerType` (&40248) |
| [ ]      | [ ]       | `ADFS_PowerControl` (&40249) |
| [ ]      | [ ]       | `ADFS_SetIDEController` (&4024A) |
| [ ]      | [ ]       | `ADFS_IDEUserOp` (&4024B) |
| [ ]      | [ ]       | `ADFS_MiscOp` (&4024C) |
| [ ]      | [ ]       | `ADFS_SectorDiscOp` (&4024D) |
| [ ]      | [ ]       | `ADFS_14` (&4024E) |
| [ ]      | [ ]       | `ADFS_15` (&4024F) |
| [ ]      | [ ]       | `ADFS_ECCSAndRetries` (&40250) |
| [ ]      | [ ]       | `ADFS_LockIDE` (&40251) |
| [ ]      | [ ]       | `ADFS_FreeSpace64` (&40252) |
| [ ]      | [ ]       | `ADFS_19` (&40253) |
| [ ]      | [ ]       | `ADFS_DiscOp64` (&40254) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ADFSPoduleIDEDying` |
| [ ]      | [ ]       | `Service_Portable` |
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `IrqV` |
| [ ]      | [ ]       | `TickerV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ADFSPoduleIDE` |
| [ ]      | [ ]       | `Service_ClaimFIQ` |
| [ ]      | [ ]       | `Service_DisplayFormatHelp` |
| [ ]      | [ ]       | `Service_IdentifyFormat` |
| [ ]      | [ ]       | `Service_ReleaseFIQ` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ADFS`
* `FileCore`
* `MessageTrans`
* `Portable`


