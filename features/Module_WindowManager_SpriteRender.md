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
| [X]      | [X]       | Render shaded |
| [X]      | [X]       | Render selected |
| [X]      | [X]       | Render selected + shaded |
| [ ]      | [ ]       | Size the sprites (for current mode) |
| [ ]      | [ ]       | Render with colourmapping for high depths |
| [ ]      | [ ]       | Render clipped to graphics window |


### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `WimpSpriteRender_Size` (demo module) |
| [ ]      | [ ]       | `WimpSpriteRender_Render` (demo module) |
| [ ]      | [ ]       | `WimpSpriteRender_Tile` (demo module) |



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


