# Module: TimerManager

## Discovered features


* Has swis
* Uses dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Hardware driver |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [x]      | [X]       | `TimerManager_ReturnNumber` (&58B80) |
| [x]      | [X]       | `TimerManager_Claim` (&58B81) |
| [x]      | [X]       | `TimerManager_Release` (&58B82) |
| [x]      | [X]       | `TimerManager_SetRate` (&58B83) |
| [x]      | [X]       | `TimerManager_Convert` (&58B84) |


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


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


*None*


