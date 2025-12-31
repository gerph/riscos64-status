# Module: Draw

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/draw.html)

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
| [ ]      | [ ]       | Can thicken paths |
| [ ]      | [ ]       | Can flatten paths |
| [ ]      | [ ]       | Can create strokes paths |
| [ ]      | [ ]       | Honours origin |
| [ ]      | [ ]       | Honours graphics window |
| [ ]      | [ ]       | Path: End (0) |
| [ ]      | [ ]       | Path: Close with line (5) |
| [ ]      | [ ]       | Path: Close with gap (4) |
| [ ]      | [ ]       | Path: Move (2) |
| [ ]      | [ ]       | Path: Move (no winding effects) (3) |
| [ ]      | [ ]       | Path: Gap (7) |
| [ ]      | [ ]       | Path: Line (8) |
| [ ]      | [ ]       | Path: Bezier (6) |
| [ ]      | [ ]       | Path: Continuation at new pointer (1) |
| [ ]      | [ ]       | Dotted paths |
| [ ]      | [ ]       | Line cap at start |
| [ ]      | [ ]       | Line cap at end |
| [ ]      | [ ]       | Line cap: Butt |
| [ ]      | [ ]       | Line cap: Round |
| [ ]      | [ ]       | Line cap: Square |
| [ ]      | [ ]       | Line cap: Triangle |
| [ ]      | [ ]       | Join: Mitre |
| [ ]      | [ ]       | Join: Round |
| [ ]      | [ ]       | Join: Bevelled |
| [ ]      | [ ]       | Mitre limit honoured |
| [ ]      | [ ]       | Winding: Even-odd |
| [ ]      | [ ]       | Winding: Non-zero |
| [ ]      | [ ]       | Winding: Positive |
| [ ]      | [ ]       | Winding: Negative |
| [ ]      | [ ]       | Fill non-boundary exterior |
| [ ]      | [ ]       | Fill boundary exterior |
| [ ]      | [ ]       | Fill non-boundary interior |
| [ ]      | [ ]       | Fill boundary interior |
| [ ]      | [ ]       | Matrix transform |

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


