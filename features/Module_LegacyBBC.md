# Module: LegacyBBC

## Discovered features


* Has file access
* Has kernel collusion
* Has serial access
* Has services
* Has services fast
* Has sound output
* Uses console input
* Uses console output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Cli extension |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_UKCommand` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ByteV` |
| [ ]      | [ ]       | `WordV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `CNPV` |


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `Sound`


