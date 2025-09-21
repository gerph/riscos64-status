# Module: Pinboard

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/pinboard.html)

## Discovered features


* Has argument parsing
* Has file access
* Has nvram state
* Has services
* Has services fast
* Is desktop application
* Sets variables
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Default desktop application |
| [ ]      | [ ]       | Desktop filer icon |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*AddTinyDir` |
| [ ]      | [ ]       | `*BackDrop` |
| [ ]      | [ ]       | `*Desktop_Pinboard` |
| [ ]      | [ ]       | `*Pin` |
| [ ]      | [ ]       | `*Pinboard` |
| [ ]      | [ ]       | `*PinboardOptions` |
| [ ]      | [ ]       | `*RemoveTinyDir` |
| [ ]      | [ ]       | `*XPin` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Memory` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartFiler` |
| [ ]      | [ ]       | `Service_StartWimp` |
| [ ]      | [ ]       | `Service_StartedWimp` |


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


* `ColourTrans`
* `DragASprite`
* `FilerAction`
* `Font`
* `Hourglass`
* `ImageFileRender`
* `MessageTrans`
* `TaskManager`
* `Territory`
* `Wimp`


