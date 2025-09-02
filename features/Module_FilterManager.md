# Module: FilterManager

## Discovered features


* Has services
* Has services fast
* Has swis
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


* `*Filters`


### SWIs


* `Filter_RegisterPreFilter` (&42640)
* `Filter_RegisterPostFilter` (&42641)
* `Filter_DeRegisterPreFilter` (&42642)
* `Filter_DeRegisterPostFilter` (&42643)
* `Filter_RegisterRectFilter` (&42644)
* `Filter_DeRegisterRectFilter` (&42645)
* `Filter_RegisterCopyFilter` (&42646)
* `Filter_DeRegisterCopyFilter` (&42647)
* `Filter_RegisterPostRectFilter` (&42648)
* `Filter_DeRegisterPostRectFilter` (&42649)
* `Filter_RegisterPostIconFilter` (&4264A)
* `Filter_DeRegisterPostIconFilter` (&4264B)
* `Filter_RegisterIconBorderFilter` (&4264C)
* `Filter_DeRegisterIconBorderFilter` (&4264D)


### Services


* `Service_WimpRegisterFilters`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_FilterManagerDying`
* `Service_FilterManagerInstalled`


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


