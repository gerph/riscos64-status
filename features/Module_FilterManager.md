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
| [ ]      | [ ]       | Registration with the WindowManager |
| [ ]      | [ ]       | Dispatch of the PreFilters |
| [ ]      | [ ]       | Dispatch of the PostFilters |
| [ ]      | [ ]       | Dispatch of the RectFilters |
| [ ]      | [ ]       | Dispatch of the CopyFilters |
| [ ]      | [ ]       | Dispatch of the PostRectFilters |
| [ ]      | [ ]       | Dispatch of the PostIconFilters |
| [ ]      | [ ]       | Dispatch of the IconBorderFilters |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Filters` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Filter_RegisterPreFilter` (&42640) |
| [X]      | [X]       | `Filter_RegisterPostFilter` (&42641) |
| [X]      | [X]       | `Filter_DeRegisterPreFilter` (&42642) |
| [X]      | [X]       | `Filter_DeRegisterPostFilter` (&42643) |
| [X]      | [X]       | `Filter_RegisterRectFilter` (&42644) |
| [X]      | [X]       | `Filter_DeRegisterRectFilter` (&42645) |
| [X]      | [X]       | `Filter_RegisterCopyFilter` (&42646) |
| [X]      | [X]       | `Filter_DeRegisterCopyFilter` (&42647) |
| [X]      | [X]       | `Filter_RegisterPostRectFilter` (&42648) |
| [X]      | [X]       | `Filter_DeRegisterPostRectFilter` (&42649) |
| [X]      | [X]       | `Filter_RegisterPostIconFilter` (&4264A) |
| [X]      | [X]       | `Filter_DeRegisterPostIconFilter` (&4264B) |
| [X]      | [X]       | `Filter_RegisterIconBorderFilter` (&4264C) |
| [X]      | [X]       | `Filter_DeRegisterIconBorderFilter` (&4264D) |


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
| [X]      | [X]       | `Service_FilterManagerDying` |
| [X]      | [X]       | `Service_FilterManagerInstalled` |


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


