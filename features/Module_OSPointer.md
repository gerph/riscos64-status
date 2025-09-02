# Module: OSPointer

## Discovered features


* Has kernel collusion
* Has nvram state
* Has services
* Has services fast

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Buffers |
| [ ]      | [ ]       | Os swis |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_BufferStarting` |
| [ ]      | [ ]       | `Service_DisplayChanged` |
| [ ]      | [ ]       | `Service_ModeChange` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ByteV` |
| [ ]      | [ ]       | `EventV` |
| [ ]      | [ ]       | `KEYV` |
| [ ]      | [ ]       | `MouseV` |
| [ ]      | [ ]       | `WordV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_Expansion` |
| [ ]      | [ ]       | `Event_VSync` |


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `INSV` |
| [ ]      | [ ]       | `KEYV` |
| [ ]      | [ ]       | `PointerV` |
| [ ]      | [ ]       | `REMV` |
| [ ]      | [ ]       | `VideoV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Event_Expansion` |
| [ ]      | [ ]       | `Event_Keyboard` |
| [ ]      | [ ]       | `Event_Mouse` |


### UpCalls


*None*


### Modules


* `Buffer`
* `MessageTrans`


