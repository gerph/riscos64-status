# Module: WindowManager

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)

## Discovered features


* Uses console input
* Uses graphics output
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Render window on screen |
| [ ]      | [ ]       | Create Text Window within window |
| [ ]      | [ ]       | Assign title from given title |
| [ ]      | [ ]       | Assign title from environment |
| [ ]      | [ ]       | Trap output after pending open to draw window |
| [ ]      | [ ]       | Exit with 'Press space...' |
| [ ]      | [ ]       | Explicit close of window |
| [ ]      | [ ]       | Disable pending on mode change |
| [ ]      | [ ]       | Reading of state |
| [ ]      | [ ]       | Resize window if title too long |


### Commands

*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_CommandWindow` (&400EF) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_SwitchingOutputToSprite` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `WrchV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_Keyboard` |


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

* `Wimp`


