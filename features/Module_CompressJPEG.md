# Module: CompressJPEG


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/compressjpeg.html)

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
| [X]      | [ ]       | Image conversion |
| [X]      | [ ]       | License info |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `CompressJPEG_Start` (&4A500) |
| [X]      | [ ]       | `CompressJPEG_WriteLine` (&4A501) |
| [X]      | [ ]       | `CompressJPEG_Finish` (&4A502) |
| [X]      | [ ]       | `CompressJPEG_Comment` (&4A503) |
| [X]      | [ ]       | `CompressJPEG_WriteLineExtended` (&4A504) |
| [X]      | [ ]       | `CompressJPEG_5` (&4A505) |
| [X]      | [ ]       | `CompressJPEG_6` (&4A506) |
| [X]      | [ ]       | `CompressJPEG_7` (&4A507) |
| [X]      | [ ]       | `CompressJPEG_8` (&4A508) |
| [X]      | [ ]       | `CompressJPEG_9` (&4A509) |
| [X]      | [ ]       | `CompressJPEG_10` (&4A50A) |
| [X]      | [ ]       | `CompressJPEG_11` (&4A50B) |
| [X]      | [ ]       | `CompressJPEG_12` (&4A50C) |
| [X]      | [ ]       | `CompressJPEG_13` (&4A50D) |
| [X]      | [ ]       | `CompressJPEG_14` (&4A50E) |
| [X]      | [ ]       | `CompressJPEG_15` (&4A50F) |
| [X]      | [ ]       | `CompressJPEG_Transcode` (&4A510) |


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


* `ColourTrans`
* `CompressJPEG`
* `ImageFileConvert`
* `MessageTrans`
* `SharedCLibrary`


