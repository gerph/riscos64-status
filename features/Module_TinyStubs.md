# Module: TinyStubs

## Discovered features


* Has dynamic code
* Has swis
* Is c
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Resourcefs files |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `TinySupport_Init` (&82C40) |
| [X]      | [ ]       | `TinySupport_Die` (&82C41) |
| [X]      | [ ]       | `TinySupport_Init2` (&82C42) |
| [X]      | [ ]       | `TinySupport_Share` (&82C43) |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `&82c41` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `Toolbox`
* `Window`


