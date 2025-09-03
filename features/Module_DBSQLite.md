# Module: DBSQLite

## Discovered features


* Has background processing
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area
* Uses heap dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Database result sets |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `DBSQLite_Open` (&57D00) |
| [X]      | [ ]       | `DBSQLite_Close` (&57D01) |
| [X]      | [ ]       | `DBSQLite_SQLStart` (&57D02) |
| [X]      | [ ]       | `DBSQLite_SQLRow` (&57D03) |
| [X]      | [ ]       | `DBSQLite_SQLEnd` (&57D04) |


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


* `ARM`
* `DBResultManager`
* `DBSQLite`
* `MessageTrans`
* `SharedCLibrary`


