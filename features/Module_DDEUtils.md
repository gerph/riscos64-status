# Module: DDEUtils

## Discovered features


* Has services
* Has services fast
* Has swis
* Sets variables

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Code variables |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Prefix` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `DDEUtils_Prefix` (&42580) |
| [X]      | [X]       | `DDEUtils_SetCLSize` (&42581) |
| [X]      | [X]       | `DDEUtils_SetCL` (&42582) |
| [X]      | [X]       | `DDEUtils_GetCLSize` (&42583) |
| [X]      | [X]       | `DDEUtils_GetCl` (&42584) |
| [X]      | [X]       | `DDEUtils_ThrowbackRegister` (&42585) |
| [X]      | [X]       | `DDEUtils_ThrowbackUnRegister` (&42586) |
| [X]      | [X]       | `DDEUtils_ThrowbackStart` (&42587) |
| [X]      | [X]       | `DDEUtils_ThrowbackSend` (&42588) |
| [X]      | [X]       | `DDEUtils_ThrowbackEnd` (&42589) |
| [ ]      | [ ]       | `DDEUtils_ReadPrefix` (&4258A) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_WimpCloseDown` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `FSCV` |
| [ ]      | [ ]       | `FileV` |
| [ ]      | [ ]       | `FindV` |
| [ ]      | [ ]       | `GBPBV` |


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


* `DDEUtils`
* `MessageTrans`
* `Wimp`


