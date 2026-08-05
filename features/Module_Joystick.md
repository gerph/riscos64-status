# Module: Joystick

## Summary

Joystick exposes the machine joystick hardware through a small Joystick SWI interface, converting physical joystick state into the standard RISC OS joystick representation.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/16bitjoystick.html)


## Relationships

RELATIONSHIPS-HERE

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
| [X]      | [X]       | `Joystick_Read` (&43F40) |
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


