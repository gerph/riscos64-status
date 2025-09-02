# Module: DrawFile

## Discovered features


* Can print
* Has argument parsing
* Has services
* Has services fast
* Has swis
* Is c
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Image conversion |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Render` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `DrawFile_Render` (&45540) |
| [X]      | [ ]       | `DrawFile_BBox` (&45541) |
| [X]      | [ ]       | `DrawFile_DeclareFonts` (&45542) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ResourceFSStarting` |


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
| [X]      | [ ]       | `Service_DrawObjectDeclareFonts` |
| [X]      | [ ]       | `Service_DrawObjectRender` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `ConvertPNG`
* `Draw`
* `Font`
* `FontMap`
* `ImageFileConvert`
* `JPEG`
* `MessageTrans`
* `PDriver`
* `SharedCLibrary`
* `Territory`
* `Wimp`


