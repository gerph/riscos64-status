# Module: DOSFS

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/dosfsnew.html)

## Discovered features


* Has disc access
* Has file access
* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Disc layouts |
| [X]      | [ ]       | Image filesystem |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*CopyBoot` |
| [X]      | [ ]       | `*DOSMap` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `DOSFS_DiscFormat` (&44B00) |
| [X]      | [ ]       | `DOSFS_LayoutStructure` (&44B01) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_CloseFile` |
| [X]      | [ ]       | `Service_DisplayFormatHelp` |
| [X]      | [ ]       | `Service_EnumerateFormats` |
| [X]      | [ ]       | `Service_FSRedeclare` |
| [X]      | [ ]       | `Service_IdentifyDisc` |
| [X]      | [ ]       | `Service_IdentifyFormat` |
| [X]      | [ ]       | `Service_LookupFileType` |
| [X]      | [ ]       | `Service_Memory` |
| [X]      | [ ]       | `Service_Reset` |
| [X]      | [ ]       | `Service_StartUpFS` |
| [X]      | [ ]       | `Service_WimpSaveDesktop` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


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
* `MimeMap`
* `SharedCLibrary`


