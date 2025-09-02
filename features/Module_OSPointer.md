# Module: OSPointer

## Discovered features


* Has kernel collusion
* Has nvram state
* Has services
* Has services fast

---

## Provides

### Functionality


* Buffers
* Os swis
* Video driver

### Commands


*None*


### SWIs


*None*


### Services


* `Service_BufferStarting`
* `Service_DisplayChanged`
* `Service_ModeChange`


### Vectors


* `ByteV`
* `EventV`
* `KEYV`
* `MouseV`
* `WordV`


### Events


* `Event_Expansion`
* `Event_VSync`


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


* `INSV`
* `KEYV`
* `PointerV`
* `REMV`
* `VideoV`


### Events


* `Event_Expansion`
* `Event_Keyboard`
* `Event_Mouse`


### UpCalls


*None*


### Modules


* `Buffer`
* `MessageTrans`


