# Module: Desktop

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/desktop.html)

## Discovered features


* Has argument parsing
* Has directory access
* Has file access
* Has nvram state
* Is desktop application
* Sets variables
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Draws banner on entry to desktop |
| [ ]      | [ ]       | Supports compressed sprite area |
| [ ]      | [ ]       | Launches standard apps by configuration |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Desktop` |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_DesktopWelcome` |
| [ ]      | [ ]       | `Service_StartWimp` |
| [ ]      | [ ]       | `Service_StartedWimp` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ADFS`
* `Font`
* `MessageTrans`
* `Squash`
* `Wimp`


