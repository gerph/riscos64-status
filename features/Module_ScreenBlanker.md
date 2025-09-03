# Module: ScreenBlanker

## Discovered features


* Has background processing
* Has pointer control
* Has services
* Has services fast
* Has swis
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*BlankTime` |
| [ ]      | [ ]       | `*DPMSTime` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ScreenBlanker_Control` (&43100) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `EventV` |
| [ ]      | [ ]       | `INSV` |
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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |
| [ ]      | [ ]       | `Service_ScreenBlanking` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `PaletteV` |


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`


