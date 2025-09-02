# Module: FSLock

## Discovered features


* Has argument parsing
* Has nvram state
* Has swis
* Uses console input
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*FSLock_ChangePassword` |
| [ ]      | [ ]       | `*FSLock_Lock` |
| [ ]      | [ ]       | `*FSLock_Status` |
| [ ]      | [ ]       | `*FSLock_Unlock` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `FSLock_Version` (&44780) |


### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ByteV` |
| [ ]      | [ ]       | `FSCV` |


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


* `FSLock`
* `MessageTrans`


