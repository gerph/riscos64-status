# Module: Hourglass

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/hourglass.html)

## Discovered features


* Has background processing
* Has pointer control
* Has services
* Has services fast
* Has swis

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Can be turned on (default delay) |
| [X]      | [X]       | Can be turned on (user delay) |
| [X]      | [X]       | Can be turned off |
| [X]      | [X]       | Can be smashed to destroy |
| [X]      | [X]       | Can show percentage values |
| [X]      | [X]       | Animates |
| [X]      | [X]       | Restores prior colours |
| [X]      | [X]       | Restores prior pointer state |
| [X]      | [X]       | Restores prior colours and state on finalisation |
| [X]      | [X]       | Uses own colours |
| [ ]      | [ ]       | Can shows 2 LEDs |
| [ ]      | [ ]       | Can shows 4 LEDs |
| [ ]      | [ ]       | Can change its colours |

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `*HOff` |
| [X]      | [X]       | `*HOn` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Hourglass_On` (&406C0) |
| [X]      | [X]       | `Hourglass_Off` (&406C1) |
| [X]      | [X]       | `Hourglass_Smash` (&406C2) |
| [X]      | [X]       | `Hourglass_Start` (&406C3) |
| [X]      | [X]       | `Hourglass_Percentage` (&406C4) |
| [ ]      | [ ]       | `Hourglass_LEDs` (&406C5) |
| [ ]      | [ ]       | `Hourglass_Colours` (&406C6) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Error` |


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


* `Hourglass`
* `MessageTrans`


