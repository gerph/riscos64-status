# Module: Squash

## Summary

Squash is a restartable, lossless streaming compression/decompression module. Its store-to-store SWI interface was designed so a caller can resume work when buffers are exhausted, rather than needing the full input/output in memory.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/squash.html)


## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has swis
* Is hardware specific
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Can compress data with fully specified output buffer |
| [ ]      | [ ]       | Can compress data with small output buffer |
| [ ]      | [ ]       | Can compress data with incomplete input data |
| [ ]      | [ ]       | Can decompress data with fully specified output buffer |
| [ ]      | [ ]       | Can decompress data with small output buffer |
| [ ]      | [ ]       | Can decompress data with incomplete input data |
| [ ]      | [ ]       | Reports corrupt data |


### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Squash_Compress` (&42700) |
| [ ]      | [ ]       | `Squash_Decompress` (&42701) |


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


