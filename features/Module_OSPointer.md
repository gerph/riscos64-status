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
| [X]      | [X]       | Buffers |
| [X]      | [X]       | Os swis |

### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Service_BufferStarting` |
| [X]      | [X]       | `Service_DisplayChanged` |
| [X]      | [X]       | `Service_ModeChange` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `ByteV` |
| [X]      | [X]       | `EventV` |
| [X]      | [X]       | `KEYV` |
| [X]      | [X]       | `MouseV` |
| [X]      | [X]       | `WordV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Event_Expansion` |
| [X]      | [X]       | `Event_VSync` |


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `INSV` |
| [X]      | [X]       | `KEYV` |
| [X]      | [X]       | `PointerV` |
| [X]      | [X]       | `REMV` |
| [X]      | [X]       | `VideoV` |


### Events


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Event_Expansion` |
| [X]      | [X]       | `Event_Keyboard` |
| [X]      | [X]       | `Event_Mouse` |


### UpCalls


*None*


### Modules


* `Buffer`
* `MessageTrans`


