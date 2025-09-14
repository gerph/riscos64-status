# Module: SystemVarsDefaults

## Discovered features


* Has dynamic code
* Has kernel collusion
* Is c
* Sets variables

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Sets `Sys$Arch`        to `aarch32` on 32bit RISC OS |
| [X]      | [X]       | Sets `Sys$Arch`        to `aarch64` on 64bit RISC OS |
| [X]      | [X]       | Sets `CLI$Prmpt`       to `*` |
| [X]      | [X]       | Sets `File$Path,`      to `@.` |
| [X]      | [X]       | Sets `Run$Path`        to `,%.` |
| [X]      | [X]       | Sets `Alias$.`         to `Cat ` |
| [X]      | [X]       | Sets `Sys$DateFormat`  to `%24:%mi:%se %dy-%m3-%ce%yr` |
| [X]      | [X]       | Sets `Sys$ReturnCode`  to `0` |
| [X]      | [X]       | Sets `Sys$RCLimit`     to `256` |
| [X]      | [X]       | Sets `Sys$Time` to return the current time |
| [X]      | [X]       | Sets `Sys$Date` to return the current date |
| [X]      | [X]       | Sets `Sys$Year` to return the current year |

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


* `MessageTrans`
* `SharedCLibrary`


