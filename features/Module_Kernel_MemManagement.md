# Module: Kernel (MemManagement)

## Summary

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component will provide the basic implementation of
memory management allowing address space to be partitioned, and page tables
to be setup and updated.

Initially the implementation will just work as stub which will let us see
that the code is functioning properly. This will just be the address space
management and the handling of the page allocations.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Address space allocation |
| [ ]      | [ ]       | Address space release |
| [ ]      | [ ]       | Page assignment |
| [ ]      | [ ]       | Page release |
| [ ]      | [ ]       | Page change |


### Commands


*None*


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


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


*None*


