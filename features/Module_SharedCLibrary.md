# Module: SharedCLibrary

## Discovered features


* Has application environment
* Has dynamic code
* Has file access
* Has swis
* Sets variables
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `SharedCLibrary_LibInitAPCS_A` (&80680) |
| [ ]      | [ ]       | `SharedCLibrary_LibInitAPCS_R` (&80681) |
| [ ]      | [ ]       | `SharedCLibrary_LibInitModule` (&80682) |
| [ ]      | [ ]       | `SharedCLibrary_LibInitAPCS_32` (&80683) |
| [ ]      | [ ]       | `SharedCLibrary_LibInitModuleAPCS_32` (&80684) |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_Sleep` |


### Modules


* `ARM`
* `DDEUtils`
* `FPEmulator`
* `MessageTrans`
* `Wimp`


