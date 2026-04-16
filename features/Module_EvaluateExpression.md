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
| [X]      | [X]       | Expands variables |
| [X]      | [X]       | Operates on strings |
| [X]      | [X]       | Operates on numbers |
| [X]      | [X]       | Returns strings |
| [X]      | [X]       | Returns numbers |
| [X]      | [X]       | Precedence honoured |
| [X]      | [X]       | `(` expressions |
| [X]      | [X]       | `(` mismatch reported |
| [X]      | [X]       | `*` multiply|
| [X]      | [X]       | `/` division |
| [X]      | [X]       | `MOD` modulo |
| [X]      | [X]       | `+` as unary operator |
| [X]      | [X]       | `-` as unary operator |
| [X]      | [X]       | `+` as binary operator |
| [X]      | [X]       | `-` as binary operator |
| [X]      | [X]       | `<=` comparison (number) |
| [X]      | [X]       | `>=` comparison (number) |
| [X]      | [X]       | `=` comparison (number) |
| [X]      | [X]       | `<>` comparison (number) |
| [X]      | [X]       | `<` comparison (number) |
| [X]      | [X]       | `>` comparison (number) |
| [X]      | [X]       | `<=` comparison (string) |
| [X]      | [X]       | `>=` comparison (string) |
| [X]      | [X]       | `=` comparison (string) |
| [X]      | [X]       | `<>` comparison (string) |
| [X]      | [X]       | `<` comparison (string) |
| [X]      | [X]       | `>` comparison (string) |
| [X]      | [X]       | `<<` shift |
| [X]      | [X]       | `>>>` shift |
| [X]      | [X]       | `>>` shift |
| [X]      | [X]       | `STR` conversion |
| [X]      | [X]       | `VAL` conversion |
| [X]      | [X]       | `RIGHT` substring |
| [X]      | [X]       | `INSTR` search |
| [X]      | [X]       | `LEFT` substring |
| [X]      | [X]       | `LEN` length |
| [X]      | [X]       | `AND` binary operator |
| [X]      | [X]       | `OR` binary operator |
| [X]      | [X]       | `EOR` binary operator |
| [X]      | [X]       | `NOT` unary operator |
| [X]      | [X]       | `LEAFNAME` file leafname |
| [X]      | [X]       | `DIRNAME` file dirname |
| [X]      | [X]       | `CANONICALISE` file canonical name|
| [X]      | [X]       | `TIMEFORMAT` format specifier |
| [X]      | [X]       | `SET` variable state |
| [X]      | [X]       | `MODULEVERSION` module version |



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


