# Module: ZLib

## Discovered features


* Has file access
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | License info |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ZLib_Compress` (&53AC0) |
| [X]      | [ ]       | `ZLib_Decompress` (&53AC1) |
| [X]      | [ ]       | `ZLib_CRC32` (&53AC2) |
| [X]      | [ ]       | `ZLib_Adler32` (&53AC3) |
| [X]      | [ ]       | `ZLib_Version` (&53AC4) |
| [X]      | [ ]       | `ZLib_ZCompress` (&53AC5) |
| [X]      | [ ]       | `ZLib_ZCompress2` (&53AC6) |
| [X]      | [ ]       | `ZLib_ZUncompress` (&53AC7) |
| [X]      | [ ]       | `ZLib_DeflateInit` (&53AC8) |
| [X]      | [ ]       | `ZLib_InflateInit` (&53AC9) |
| [X]      | [ ]       | `ZLib_DeflateInit2` (&53ACA) |
| [X]      | [ ]       | `ZLib_InflateInit2` (&53ACB) |
| [X]      | [ ]       | `ZLib_Deflate` (&53ACC) |
| [X]      | [ ]       | `ZLib_DeflateEnd` (&53ACD) |
| [X]      | [ ]       | `ZLib_Inflate` (&53ACE) |
| [X]      | [ ]       | `ZLib_InflateEnd` (&53ACF) |
| [X]      | [ ]       | `ZLib_DeflateSetDictionary` (&53AD0) |
| [X]      | [ ]       | `ZLib_DeflateCopy` (&53AD1) |
| [X]      | [ ]       | `ZLib_DeflateReset` (&53AD2) |
| [X]      | [ ]       | `ZLib_DeflateParams` (&53AD3) |
| [X]      | [ ]       | `ZLib_InflateSetDictionary` (&53AD4) |
| [X]      | [ ]       | `ZLib_InflateSync` (&53AD5) |
| [X]      | [ ]       | `ZLib_InflateReset` (&53AD6) |
| [X]      | [ ]       | `ZLib_GZOpen` (&53AD7) |
| [X]      | [ ]       | `ZLib_GZRead` (&53AD8) |
| [X]      | [ ]       | `ZLib_GZWrite` (&53AD9) |
| [X]      | [ ]       | `ZLib_GZFlush` (&53ADA) |
| [X]      | [ ]       | `ZLib_GZClose` (&53ADB) |
| [X]      | [ ]       | `ZLib_GZError` (&53ADC) |
| [X]      | [ ]       | `ZLib_GZSeek` (&53ADD) |
| [X]      | [ ]       | `ZLib_GZTell` (&53ADE) |
| [X]      | [ ]       | `ZLib_GZEOF` (&53ADF) |
| [X]      | [ ]       | `ZLib_TaskAssociate` (&53AE0) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |
| [X]      | [ ]       | `Service_WimpCloseDown` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_TaskManagerAcknowledgements` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


