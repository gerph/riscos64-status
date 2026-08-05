# Module: FileTypes

## Summary

FileTypes provides the system filetype database/resources used by filing systems and desktop applications to map numeric RISC OS filetypes to names, MIME-like metadata and display associations. It has no SWI API: its contribution is module/resource/service data.



## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Sets variables

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Configures variables from file |
| [X]      | [X]       | Sets `File$Type_` types for `T` registrations |
| [X]      | [X]       | Sets `Alias$@RunType_` types for `R` registrations |
| [X]      | [X]       | Sets `Alias$@LoadType_` types for `L` registrations |
| [X]      | [X]       | Sets `Alias$@PrintType_` types for `P` registrations |

### Commands


*None*


### SWIs


*None*


### Services


*None*


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


*None*


