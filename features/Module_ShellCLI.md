# Module: ShellCLI

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/shellcli.html)

## Discovered features


* Has application environment
* Has services
* Has services fast
* Has swis
* Is desktop application
* Uses console input
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Notice on how to return to desktop |
| [ ]      | [ ]       | Command line prompt shown with `CLI$Prompt` |
| [ ]      | [ ]       | Errors are reported |
| [ ]      | [ ]       | Exits are trapped |
| [ ]      | [ ]       | Errors are trapped |
| [ ]      | [ ]       | Aborts are trapped |


### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*ShellCLI` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Shell_Create` (&805C0) |
| [X]      | [ ]       | `Shell_Destroy` (&805C1) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Memory` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_WimpCloseDown` |


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
* `Shell`
* `Wimp`


