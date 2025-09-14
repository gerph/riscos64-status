# Module: MimeMap

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Sets variables
* Uses dynamic area
* Uses heap dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Creates code variable |
| [X]      | [X]       | Reads MimeMap file |
| [X]      | [X]       | Reloads MimeMap file automatically if changed |
| [X]      | [X]       | Resets `Inet$MimeMappings` to default if empty when `InetDBase` changes |
| [X]      | [X]       | Translates from DOS types |
| [X]      | [X]       | Translates from RISC OS types |
| [X]      | [X]       | Translates from media types |
| [X]      | [X]       | Translates from Mac types |
| [X]      | [X]       | Translates to DOS types |
| [X]      | [X]       | Translates to RISC OS types |
| [X]      | [X]       | Translates to media types |
| [X]      | [X]       | Translates to Mac types |
| [X]      | [X]       | Supports wildcards in MimeMap |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `*MimeMap` |
| [X]      | [X]       | `*ReadMimeMap` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `MimeMap_Translate` (&50B00) |
| [X]      | [X]       | `MimeMap_Configure` (&50B01) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Service_InternetVars` |


### Vectors


*None*


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


* `MessageTrans`
* `SharedCLibrary`


