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

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*HOff` |
| [X]      | [ ]       | `*HOn` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Hourglass_On` (&406C0) |
| [X]      | [ ]       | `Hourglass_Off` (&406C1) |
| [X]      | [ ]       | `Hourglass_Smash` (&406C2) |
| [X]      | [ ]       | `Hourglass_Start` (&406C3) |
| [X]      | [ ]       | `Hourglass_Percentage` (&406C4) |
| [X]      | [ ]       | `Hourglass_LEDs` (&406C5) |
| [X]      | [ ]       | `Hourglass_Colours` (&406C6) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Error` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `TickerV` |


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


