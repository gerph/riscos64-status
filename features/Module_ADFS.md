# Module: ADFS

## Discovered features


* Does disc access
* Has argument parsing
* Has background processing
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


* Filecore filesystem
* Hardware driver

### Commands


* `*ADFS`
* `*Configure ADFSDirCache`
* `*Configure ADFSbuffers`
* `*Configure Drive`
* `*Configure Floppies`
* `*Configure IDEDiscs`
* `*Configure Step`
* `*Format`


### SWIs


* `ADFS_DiscOp` (&40240)
* `ADFS_HDC` (&40241)
* `ADFS_Drives` (&40242)
* `ADFS_FreeSpace` (&40243)
* `ADFS_Retries` (&40244)
* `ADFS_DescribeDisc` (&40245)
* `ADFS_VetFormat` (&40246)
* `ADFS_FlpProcessDCB` (&40247)
* `ADFS_ControllerType` (&40248)
* `ADFS_PowerControl` (&40249)
* `ADFS_SetIDEController` (&4024A)
* `ADFS_IDEUserOp` (&4024B)
* `ADFS_MiscOp` (&4024C)
* `ADFS_SectorDiscOp` (&4024D)
* `ADFS_14` (&4024E)
* `ADFS_15` (&4024F)
* `ADFS_ECCSAndRetries` (&40250)
* `ADFS_LockIDE` (&40251)
* `ADFS_FreeSpace64` (&40252)
* `ADFS_19` (&40253)
* `ADFS_DiscOp64` (&40254)


### Services


* `Service_ADFSPoduleIDEDying`
* `Service_Portable`
* `Service_Reset`


### Vectors


* `IrqV`
* `TickerV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_ADFSPoduleIDE`
* `Service_ClaimFIQ`
* `Service_DisplayFormatHelp`
* `Service_IdentifyFormat`
* `Service_ReleaseFIQ`


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


