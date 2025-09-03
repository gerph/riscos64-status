# Module: Display

## Discovered features


* Has services
* Has services fast
* Is desktop application
* Sets variables
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Default desktop application |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Desktop_DisplayManager` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_CalibrationChanged` |
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_ModeFileChanged` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartWimp` |
| [ ]      | [ ]       | `Service_StartedWimp` |
| [ ]      | [ ]       | `Service_WimpPalette` |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `PaletteV` |


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `MessageTrans`
* `ScreenModes`
* `Wimp`


