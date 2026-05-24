# Module: Kernel (Modules)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component will provide the handling of the `OS_Heap`
calls.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `OS_Heap` 0 (Init) |
| [X]      | [ ]       | `OS_Heap` 1 (Desc) |
| [X]      | [ ]       | `OS_Heap` 2 (Get) |
| [X]      | [ ]       | `OS_Heap` 3 (Free) |
| [X]      | [ ]       | `OS_Heap` 4 (ExtendBlock) |
| [X]      | [ ]       | `OS_Heap` 5 (ExtendHeap) |
| [X]      | [ ]       | `OS_Heap` 6 (ReadBlockSize) |
| [ ]      | [ ]       | Free link is relative to the free block |
| [ ]      | [ ]       | Blocks are cleared on free |
| [ ]      | [ ]       | Blocks are cleared on allocate |
| [ ]      | [ ]       | Extend actually extends (not allocate, copy and free) |
| [ ]      | [ ]       | Heap can be validated |
| [ ]      | [ ]       | Corrupt header is detected |
| [ ]      | [ ]       | Inconsistency when allocating is detected |
| [ ]      | [ ]       | Corrupt free is detected |
| [ ]      | [ ]       | Invalid free is detected |


### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `OS_Heap` (&1e) |
| [X]      | [ ]       | `Heap_Heap` (testing interface) |



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


