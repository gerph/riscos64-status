# Module: ImageFileConvert

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses image conversion

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Image rendering |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*ImageFileConverters` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ImageFileConvert_Convert` (&56840) |
| [X]      | [ ]       | `ImageFileConvert_MiscOp` (&56841) |
| [X]      | [ ]       | `ImageFileConvert_ConverterInfo` (&56842) |
| [X]      | [ ]       | `ImageFileConvert_Register` (&56843) |
| [X]      | [ ]       | `ImageFileConvert_Deregister` (&56844) |
| [X]      | [ ]       | `ImageFileConvert_EnumerateConverters` (&56845) |


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
| [X]      | [ ]       | `Service_ImageFileConvert_ConverterChanged` |
| [X]      | [ ]       | `Service_ImageFileConvert_Dying` |
| [X]      | [ ]       | `Service_ImageFileConvert_Started` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ImageFileConvert`
* `ImageFileRender`
* `MessageTrans`
* `SharedCLibrary`


