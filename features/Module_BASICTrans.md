# Module: BASICTrans

## Summary

BASICTrans is BASIC's token/message translation service: it maps BASIC keywords/tokens and reports translated messages for tools that need to read or present BASIC source.



## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/basic.html)


## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has swis
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
| [ ]      | [ ]       | `BASICTrans_HELP` (&42C80) |
| [ ]      | [ ]       | `BASICTrans_Error` (&42C81) |
| [ ]      | [ ]       | `BASICTrans_Message` (&42C82) |


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


* `MessageTrans`


