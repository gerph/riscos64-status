# Module: WindowManager

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)

## Discovered features


* Has services
* Has services fast
* Has swis
* Uses graphics output
* Uses heap dynamic area

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Render half size |
| [X]      | [ ]       | Render shaded |
| [X]      | [ ]       | Render selected |
| [X]      | [ ]       | Render selected + shaded |
| [ ]      | [ ]       | Size the sprites (for current mode) |
| [ ]      | [ ]       | Render with colourmapping for high depths |
| [ ]      | [ ]       | Render clipped to graphics window |


### Commands


*None*


### SWIs


*None*



### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_SwitchingOutputToSprite` |


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


* `ColourMap`
* `ColourTrans`


