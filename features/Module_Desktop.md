# Module: Desktop

## Summary

The Desktop module is the session-level desktop coordinator. Its service handler is deliberately small: it mediates the Service_Serviced protocol used while the desktop is being assembled, rather than implementing the Wimp itself. It belongs above Wimp, Filer and Pinboard in the boot-time desktop stack.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/desktop.html)


## Relationships

RELATIONSHIPS-HERE

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
| [X]      | [ ]       | Draws banner on entry to desktop |
| [X]      | [ ]       | Supports compressed sprite area |
| [X]      | [ ]       | Launches standard apps by configuration |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Desktop` |


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


