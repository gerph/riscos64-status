# Module: ZLib

## Discovered features


* Does file access
* Has services
* Has services fast
* Has swis
* Is c
* Uses dynamic area

---

## Provides

### Functionality


* License info

### Commands


*None*


### SWIs


* `ZLib_Compress` (&53AC0)
* `ZLib_Decompress` (&53AC1)
* `ZLib_CRC32` (&53AC2)
* `ZLib_Adler32` (&53AC3)
* `ZLib_Version` (&53AC4)
* `ZLib_ZCompress` (&53AC5)
* `ZLib_ZCompress2` (&53AC6)
* `ZLib_ZUncompress` (&53AC7)
* `ZLib_DeflateInit` (&53AC8)
* `ZLib_InflateInit` (&53AC9)
* `ZLib_DeflateInit2` (&53ACA)
* `ZLib_InflateInit2` (&53ACB)
* `ZLib_Deflate` (&53ACC)
* `ZLib_DeflateEnd` (&53ACD)
* `ZLib_Inflate` (&53ACE)
* `ZLib_InflateEnd` (&53ACF)
* `ZLib_DeflateSetDictionary` (&53AD0)
* `ZLib_DeflateCopy` (&53AD1)
* `ZLib_DeflateReset` (&53AD2)
* `ZLib_DeflateParams` (&53AD3)
* `ZLib_InflateSetDictionary` (&53AD4)
* `ZLib_InflateSync` (&53AD5)
* `ZLib_InflateReset` (&53AD6)
* `ZLib_GZOpen` (&53AD7)
* `ZLib_GZRead` (&53AD8)
* `ZLib_GZWrite` (&53AD9)
* `ZLib_GZFlush` (&53ADA)
* `ZLib_GZClose` (&53ADB)
* `ZLib_GZError` (&53ADC)
* `ZLib_GZSeek` (&53ADD)
* `ZLib_GZTell` (&53ADE)
* `ZLib_GZEOF` (&53ADF)
* `ZLib_TaskAssociate` (&53AE0)


### Services


* `Service_TaskManagerAcknowledgements`
* `Service_WimpCloseDown`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_TaskManagerAcknowledgements`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SharedCLibrary`


