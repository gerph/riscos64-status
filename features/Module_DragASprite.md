# Module: DragASprite

## Summary

DragASprit supplies sprite-based drag feedback, the companion primitive for clients that need to drag an image/sprite rather than an abstract object.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/dragasprite.html)


## Relationships

RELATIONSHIPS-HERE

## Discovered features


* Has swis
* Uses graphics output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Capture screen area |
| [ ]      | [ ]       | Restore on redraw |
| [ ]      | [ ]       | Draws new sprite over the captured area |
| [ ]      | [ ]       | Sprite horizontal position honoured |
| [ ]      | [ ]       | Sprite vertical position honoured |
| [ ]      | [ ]       | Bounding box region honoured |
| [ ]      | [ ]       | Bounding box to drag box |
| [ ]      | [ ]       | Bounding box to pointer |
| [ ]      | [ ]       | Drop shadow drawn |
| [ ]      | [ ]       | Translucency |


### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `DragASprite_Start` (&42400) |
| [ ]      | [ ]       | `DragASprite_Stop` (&42401) |


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


* `ColourTrans`
* `MessageTrans`
* `Wimp`


