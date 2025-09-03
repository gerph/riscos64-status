# Module: Zipper

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | License info |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Zipper_UnZipOpen` (&559C0) |
| [X]      | [ ]       | `Zipper_UnZipClose` (&559C1) |
| [X]      | [ ]       | `Zipper_UnZipInfo` (&559C2) |
| [X]      | [ ]       | `Zipper_UnZipEnumerate` (&559C3) |
| [X]      | [ ]       | `Zipper_UnZipFileInfo` (&559C4) |
| [X]      | [ ]       | `Zipper_UnZipFileOpen` (&559C5) |
| [X]      | [ ]       | `Zipper_UnZipFileClose` (&559C6) |
| [X]      | [ ]       | `Zipper_UnZipFileRead` (&559C7) |
| [X]      | [ ]       | `Zipper_UnZipFileEOF` (&559C8) |
| [X]      | [ ]       | `Zipper_9` (&559C9) |
| [X]      | [ ]       | `Zipper_10` (&559CA) |
| [X]      | [ ]       | `Zipper_11` (&559CB) |
| [X]      | [ ]       | `Zipper_12` (&559CC) |
| [X]      | [ ]       | `Zipper_13` (&559CD) |
| [X]      | [ ]       | `Zipper_14` (&559CE) |
| [X]      | [ ]       | `Zipper_15` (&559CF) |
| [X]      | [ ]       | `Zipper_ZipOpen` (&559D0) |
| [X]      | [ ]       | `Zipper_ZipClose` (&559D1) |
| [X]      | [ ]       | `Zipper_ZipFileOpen` (&559D2) |
| [X]      | [ ]       | `Zipper_ZipFileClose` (&559D3) |
| [X]      | [ ]       | `Zipper_ZipFileWrite` (&559D4) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |
| [X]      | [ ]       | `Service_WimpCloseDown` |


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
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `MimeMap`
* `SharedCLibrary`
* `Territory`
* `ZLib`


