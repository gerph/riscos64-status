# Module: DBResultManager

## Discovered features


* Has swis
* Is c

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*DBResultSources` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `DBResultManager_Register` (&57D40) |
| [X]      | [ ]       | `DBResultManager_Deregister` (&57D41) |
| [X]      | [ ]       | `DBResultManager_Start` (&57D42) |
| [X]      | [ ]       | `DBResultManager_ReadData` (&57D43) |
| [X]      | [ ]       | `DBResultManager_End` (&57D44) |
| [X]      | [ ]       | `DBResultManager_Open` (&57D45) |
| [X]      | [ ]       | `DBResultManager_Close` (&57D46) |


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
| [X]      | [ ]       | `&9000` |
| [X]      | [ ]       | `&9001` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


