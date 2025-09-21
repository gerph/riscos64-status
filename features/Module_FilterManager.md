# Module: FilterManager

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/filterman.html)

## Discovered features


* Has services
* Has services fast
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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Filters` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Filter_RegisterPreFilter` (&42640) |
| [ ]      | [ ]       | `Filter_RegisterPostFilter` (&42641) |
| [ ]      | [ ]       | `Filter_DeRegisterPreFilter` (&42642) |
| [ ]      | [ ]       | `Filter_DeRegisterPostFilter` (&42643) |
| [ ]      | [ ]       | `Filter_RegisterRectFilter` (&42644) |
| [ ]      | [ ]       | `Filter_DeRegisterRectFilter` (&42645) |
| [ ]      | [ ]       | `Filter_RegisterCopyFilter` (&42646) |
| [ ]      | [ ]       | `Filter_DeRegisterCopyFilter` (&42647) |
| [ ]      | [ ]       | `Filter_RegisterPostRectFilter` (&42648) |
| [ ]      | [ ]       | `Filter_DeRegisterPostRectFilter` (&42649) |
| [ ]      | [ ]       | `Filter_RegisterPostIconFilter` (&4264A) |
| [ ]      | [ ]       | `Filter_DeRegisterPostIconFilter` (&4264B) |
| [ ]      | [ ]       | `Filter_RegisterIconBorderFilter` (&4264C) |
| [ ]      | [ ]       | `Filter_DeRegisterIconBorderFilter` (&4264D) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_WimpRegisterFilters` |


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
| [ ]      | [ ]       | `Service_FilterManagerDying` |
| [ ]      | [ ]       | `Service_FilterManagerInstalled` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `TaskManager`
* `Wimp`


