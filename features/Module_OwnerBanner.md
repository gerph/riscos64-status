# Module: OwnerBanner

## Discovered features


* Has services
* Has services fast
* Uses console output
* Uses graphics output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | System banner text on startup |
| [X]      | [X]       | System banner user name/address text on startup |
| [ ]      | [ ]       | System banner graphics on startup |
| [ ]      | [ ]       | System banner graphics on start desktop |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_DesktopWelcome` |
| [X]      | [X]       | `Service_OSInitBanner` |


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


* `ColourTrans`
* `Wimp`


