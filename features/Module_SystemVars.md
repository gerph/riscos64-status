# Module: SystemVars

## Overview

SystemVars handles the environment variables registration and reading.
In RISC OS Select it also handled:

* `OS_GSTrans`, `OS_GSRead`, `OS_GSInit`
* Setting of the default variables.

These functions might be split into a separate component.

## Discovered features


* Has dynamic code
* Has kernel collusion
* Sets variables
* Uses dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | String variables |
| [X]      | [ ]       | Number variables |
| [X]      | [ ]       | Evaluated variables |
| [X]      | [ ]       | Macro variables |
| [X]      | [ ]       | Creating variables |
| [X]      | [ ]       | Reading variables |
| [X]      | [ ]       | Updating variables |
| [X]      | [ ]       | Deleting variables |
| [X]      | [X]       | Code variables |
| [ ]      | [ ]       | Code variables with workspace (introduced in Select) |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_GSInit` (not sure this should be here) |
| [ ]      | [ ]       | `OS_GSRead` (not sure this should be here) |
| [ ]      | [ ]       | `OS_GSTrans` (not sure this should be here) |
| [ ]      | [ ]       | `OS_ReadVarVal` |
| [ ]      | [ ]       | `OS_SetVarVal` |


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


