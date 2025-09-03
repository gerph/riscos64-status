# Module: BootCommands

## Discovered features


* Has application environment
* Has argument parsing
* Has directory access
* Has file access
* Is c
* Sets variables
* Uses econet
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Resourcefs files |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*AddApp` |
| [X]      | [ ]       | `*AppSize` |
| [X]      | [ ]       | `*Do` |
| [X]      | [ ]       | `*FreePool` |
| [X]      | [ ]       | `*IfThere` |
| [X]      | [ ]       | `*LoadCMOS` |
| [X]      | [ ]       | `*Repeat` |
| [X]      | [ ]       | `*SafeLogon` |
| [X]      | [ ]       | `*X` |


### SWIs


*None*


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


* `Econet`
* `MessageTrans`
* `NetFS`
* `ResourceFS`
* `SharedCLibrary`
* `Territory`
* `Wimp`


