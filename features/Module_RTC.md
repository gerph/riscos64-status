# Module: RTC

## Discovered features


*None*

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Os swis |

### Commands


*None*


### SWIs


*None*


### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `WordV` |
| [X]      | [X]       | `WordV_ReadRTC_AsString`  (0) |
| [X]      | [X]       | `WordV_ReadRTC_AsBCD`     (1) |
| [X]      | [X]       | `WordV_ReadRTC_FromBCD`   (2) |
| [X]      | [X]       | `WordV_ReadRTC_AsQuin`    (3) |
| [X]      | [X]       | `WordV_WriteRTC_Quin`             (5) |
| [X]      | [X]       | `WordV_WriteRTC_TimeString`       (8) |
| [X]      | [X]       | `WordV_WriteRTC_DateString`       (15) |
| [X]      | [X]       | `WordV_WriteRTC_DateTimeString`   (24) |


### Events


*None*


### UpCalls


*None*



---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_RTCSynchronised` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `RTCV` |
| [ ]      | [ ]       | `RTCV WriteTime` |
| [ ]      | [ ]       | `RTCV ReadTime` |


### Events


*None*


### UpCalls


*None*


### Modules


* `Territory`


