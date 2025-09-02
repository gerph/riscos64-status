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


* Image rendering

### Commands


* `*ImageFileConverters`


### SWIs


* `ImageFileConvert_Convert` (&56840)
* `ImageFileConvert_MiscOp` (&56841)
* `ImageFileConvert_ConverterInfo` (&56842)
* `ImageFileConvert_Register` (&56843)
* `ImageFileConvert_Deregister` (&56844)
* `ImageFileConvert_EnumerateConverters` (&56845)


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


* `Service_ImageFileConvert_ConverterChanged`
* `Service_ImageFileConvert_Dying`
* `Service_ImageFileConvert_Started`


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


