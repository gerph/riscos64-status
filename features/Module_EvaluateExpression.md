# Module: EvaluateExpression

## Summary

The EvaluateExpression module provides the interface for expression processing,
used by `OS_EvaluateExpression`.

The expectation is that there will be both command line versions of the
implementation that can be used for testing, and a module which
implements the equivalent of the `OS_EvaluateExpression` SWI calls.

## Discovered features


* Has kernel collusion
* Uses console output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Expands variables |
| [ ]      | [ ]       | Operates on strings |
| [ ]      | [ ]       | Operates on numbers |
| [ ]      | [ ]       | Precedence honoured |
| [ ]      | [ ]       | `(` expressions |
| [ ]      | [ ]       | `(` mismatch reported |
| [ ]      | [ ]       | `*` multiply|
| [ ]      | [ ]       | `/` division |
| [ ]      | [ ]       | `MOD` modulo |
| [ ]      | [ ]       | `+` as unary operator |
| [ ]      | [ ]       | `-` as unary operator |
| [ ]      | [ ]       | `+` as binary operator |
| [ ]      | [ ]       | `-` as binary operator |
| [ ]      | [ ]       | `<=` comparison |
| [ ]      | [ ]       | `>=` comparison |
| [ ]      | [ ]       | `=` comparison |
| [ ]      | [ ]       | `<>` comparison |
| [ ]      | [ ]       | `<` comparison |
| [ ]      | [ ]       | `>` comparison |
| [ ]      | [ ]       | `<<` shift |
| [ ]      | [ ]       | `>>>` shift |
| [ ]      | [ ]       | `>>` shift |
| [ ]      | [ ]       | `STR` conversion |
| [ ]      | [ ]       | `VAL` conversion |
| [ ]      | [ ]       | `RIGHT` substring |
| [ ]      | [ ]       | `INSTR` search |
| [ ]      | [ ]       | `LEFT` substring |
| [ ]      | [ ]       | `LEN` length |
| [ ]      | [ ]       | `AND` binary operator |
| [ ]      | [ ]       | `OR` binary operator |
| [ ]      | [ ]       | `EOR` binary operator |
| [ ]      | [ ]       | `NOT` binary operator |
| [ ]      | [ ]       | `LEAFNAME` file leafname |
| [ ]      | [ ]       | `DIRNAME` file dirname |
| [ ]      | [ ]       | `CANONICALISE` file canonical name|
| [ ]      | [ ]       | `TIMEFORMAT` format specifier |
| [ ]      | [ ]       | `SET` variable state |
| [ ]      | [ ]       | `MODULEVERSION` module version |



### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `*Eval` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `OS_EvaluateExpression` |


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
* `Territory`


