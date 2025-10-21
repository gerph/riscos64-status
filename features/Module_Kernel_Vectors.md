# Module: Kernel (Vectors)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component provides the registration of vector handlers
and their dispatch.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/softvecs.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Vectors can be appended to head of the list |
| [ ]      | [ ]       | Vectors can be removed from list (all of them) |
| [ ]      | [ ]       | Vectors can be appended to head of the list (removing dupes) |
| [ ]      | [ ]       | Vectors can called |
| [ ]      | [ ]       | Vectors can be claimed |
| [ ]      | [ ]       | Vectors can be post-trapped |
| [ ]      | [ ]       | Applications can be delinked |
| [ ]      | [ ]       | Applications can be relinked |
| [ ]      | [ ]       | Vector enumeration interface (should be added) |



### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_Claim` (&1F) |
| [ ]      | [ ]       | `OS_Release` (&20) |
| [ ]      | [ ]       | `OS_CallAVector` (&34) |
| [ ]      | [ ]       | `OS_AddToVector` (&47) |
| [ ]      | [ ]       | `OS_DelinkApplication` (&4D) |
| [ ]      | [ ]       | `OS_RelinkApplication` (&4E) |



### Services

*None*


### Vectors


*None (we implement them!)*


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


*None*


