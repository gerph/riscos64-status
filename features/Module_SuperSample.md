# Module: SuperSample

## Summary

Super is the supersampling image utility module. Its stated purpose is to convert 1-bpp images to 4-bpp by 4x4 reduction, with Sample90 and Sample45 operations/matrices for the supported sampling transforms.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/supersample.html)


## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has swis

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
| [X]      | [ ]       | `Super_Sample90` (&40D80) |
| [X]      | [ ]       | `Super_Sample45` (&40D81) |


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


