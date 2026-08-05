# Module: International

## Summary

International is the central locale/internationalisation broker. It supplies the International service interface used to locate country-specific behaviour and resources, and restores its ResourceFS files when ResourceFS restarts.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/international.html)


## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has nvram state
* Has services
* Has services fast
* Uses console output
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
| [ ]      | [ ]       | `*Alphabet` |
| [ ]      | [ ]       | `*Alphabets` |
| [ ]      | [ ]       | `*Configure Country` |
| [ ]      | [ ]       | `*Countries` |
| [ ]      | [ ]       | `*Country` |
| [ ]      | [ ]       | `*Keyboard` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_International` |


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
| [ ]      | [ ]       | `Service_International` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`


