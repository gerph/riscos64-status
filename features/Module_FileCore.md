# Module: FileCore

## Discovered features


* Does disc access
* Has nvram state
* Has services
* Has services fast
* Has swis
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality


* Disc layouts

### Commands


* `*Backup`
* `*Bye`
* `*CheckMap`
* `*Compact`
* `*Defect`
* `*Dismount`
* `*Drive`
* `*Free`
* `*Map`
* `*Mount`
* `*NameDisc`
* `*NameDisk`
* `*Verify`


### SWIs


* `FileCore_DiscOp` (&40540)
* `FileCore_Create` (&40541)
* `FileCore_Drives` (&40542)
* `FileCore_FreeSpace` (&40543)
* `FileCore_FloppyStructure` (&40544)
* `FileCore_DescribeDisc` (&40545)
* `FileCore_DiscardReadSectorsCache` (&40546)
* `FileCore_DiscFormat` (&40547)
* `FileCore_LayoutStructure` (&40548)
* `FileCore_MiscOp` (&40549)
* `FileCore_SectorOp` (&4054A)
* `FileCore_FreeSpace64` (&4054B)
* `FileCore_DiscOp64` (&4054C)
* `FileCore_Features` (&4054D)


### Services


* `Service_ClaimFIQ`
* `Service_DisplayFormatHelp`
* `Service_EnumerateFormats`
* `Service_FSRedeclare`
* `Service_IdentifyDisc`
* `Service_IdentifyFormat`
* `Service_Memory`
* `Service_Reset`
* `Service_TerritoryStarted`


### Vectors


* `?`
* `TickerV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `?`
* `Service_ClaimFIQ`
* `Service_ReleaseFIQ`


### Vectors


*None*


### Events


*None*


### UpCalls


* `?`


### Modules


* `FileCore`
* `FSLock`
* `MessageTrans`
* `Territory`
* `Wimp`


