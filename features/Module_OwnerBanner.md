# Module: OwnerBanner

## Summary

OwnerBanner contributes a configurable ownership/welcome banner during OS and desktop startup. It reads system/mode information and responds to the banner services rather than supplying a public SWI interface.



## Relationships

RELATIONSHIPS-HERE

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
| [X]      | [X]       | System banner graphics on startup |
| [X]      | [X]       | System banner graphics on start desktop |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Service_DesktopWelcome` |
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


