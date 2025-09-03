# Module: RamFS

## Discovered features


* Has disc access
* Has nvram state
* Has swis
* Uses dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Filecore filesystem |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Ram` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `RamFS_DiscOp` (&40780) |
| [ ]      | [ ]       | `RamFS_NOP` (&40781) |
| [ ]      | [ ]       | `RamFS_Drives` (&40782) |
| [ ]      | [ ]       | `RamFS_FreeSpace` (&40783) |
| [ ]      | [ ]       | `RamFS_DescribeDisc` (&40785) |
| [ ]      | [ ]       | `RamFS_DiscOp64` (&40786) |
| [ ]      | [ ]       | `RamFS_MiscOp` (&4078C) |
| [ ]      | [ ]       | `RamFS_SectorDiscOp` (&4078D) |


### Services


*None*


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


*None*


### Modules


* `FileCore`
* `MessageTrans`


