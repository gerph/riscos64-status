# Module: Joystick

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/16bitjoystick.html)

## Discovered features


* Has services
* Has swis
* Uses messagetrans

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
| [ ]      | [ ]       | `Joystick_Read` (&43F40) |
| [ ]      | [ ]       | `Joystick_CalibrateTopRight` (&43F41) |
| [ ]      | [ ]       | `Joystick_CalibrateBottomLeft` (&43F42) |


### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `EventV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_VSync` |


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


