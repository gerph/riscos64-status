# Module: ConvertBMP

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c

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
| [X]      | [ ]       | `ConvertBMP_CreateSpriteFromDIB` (&58940) |


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
* `ImageFileConvert`
* `MessageTrans`
* `SharedCLibrary`


