# Module: Draw

## Discovered features


* Has services
* Has services fast
* Has swis
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Graphics output |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Draw_ProcessPath` (&40700) |
| [ ]      | [ ]       | `Draw_ProcessPathFP` (&40701) |
| [ ]      | [ ]       | `Draw_Fill` (&40702) |
| [ ]      | [ ]       | `Draw_FillFP` (&40703) |
| [ ]      | [ ]       | `Draw_Stroke` (&40704) |
| [ ]      | [ ]       | `Draw_StrokeFP` (&40705) |
| [ ]      | [ ]       | `Draw_StrokePath` (&40706) |
| [ ]      | [ ]       | `Draw_StrokePathFP` (&40707) |
| [ ]      | [ ]       | `Draw_FlattenPath` (&40708) |
| [ ]      | [ ]       | `Draw_FlattenPathFP` (&40709) |
| [ ]      | [ ]       | `Draw_TransformPath` (&4070A) |
| [ ]      | [ ]       | `Draw_TransformPathFP` (&4070B) |
| [ ]      | [ ]       | `Draw_FillClipped` (&4070C) |
| [ ]      | [ ]       | `Draw_FillClippedFP` (&4070D) |
| [ ]      | [ ]       | `Draw_StrokeClipped` (&4070E) |
| [ ]      | [ ]       | `Draw_StrokeClippedFP` (&4070F) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `DrawV` |


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
| [ ]      | [ ]       | `DrawV` |


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`


