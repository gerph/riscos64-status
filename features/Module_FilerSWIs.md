# Module: FilerSWIs

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/fileraction.html)

## Discovered features


* Has services
* Has services fast
* Has swis

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `FilerAction_SendSelectedDirectory` (&40F80) |
| [X]      | [X]       | `FilerAction_SendSelectedFile` (&40F81) |
| [X]      | [X]       | `FilerAction_SendStartOperation` (&40F82) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Service_WimpCloseDown` |


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
* `Wimp`


