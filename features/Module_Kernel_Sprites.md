# Module: Kernel (Sprites)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component will provide the sprite manipulation
code - it is likely that it will be entirely split off from the Kernel
into a separate SpriteOps module.

Some of the interface may end up stubbed, to be filled in when integrated,

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `SpriteV` internal dispatch |
| [ ]      | [ ]       | SpriteOp &2   (2)  : ScreenSave |
| [ ]      | [ ]       | SpriteOp &3   (3)  : ScreenLoad |

| [X]      | [X]       | SpriteOp &8   (8)  : ReadAreaCB |
| [X]      | [X]       | SpriteOp &9   (9)  : ClearSprites |
| [X]      | [X]       | SpriteOp &a   (10) : LoadSpriteFile |
| [X]      | [X]       | SpriteOp &b   (11) : MergeSpriteFile |
| [X]      | [X]       | SpriteOp &c   (12) : SaveSpriteFile |
| [X]      | [X]       | SpriteOp &11  (17) : CheckSpriteArea |

| [X]      | [X]       | SpriteOp &18  (24) : SelectSprite |
| [X]      | [X]       | SpriteOp &28  (40) : ReadSpriteSize |
| [X]      | [X]       | SpriteOp &d   (13) : ReturnName |

| [X]      | [X]       | SpriteOp &f   (15) : CreateSprite |
| [ ]      | [ ]       | SpriteOp &10  (16) : GetSpriteUserCoords |
| [ ]      | [ ]       | SpriteOp &e   (14) : GetSprite |

| [X]      | [X]       | SpriteOp &19  (25) : DeleteSprite |
| [X]      | [X]       | SpriteOp &1a  (26) : RenameSprite |
| [X]      | [X]       | SpriteOp &1b  (27) : CopySprite |
| [X]      | [X]       | SpriteOp &23  (35) : AppendSprite |

| [X]      | [X]       | SpriteOp &1f  (31) : InsertRow |
| [X]      | [X]       | SpriteOp &20  (32) : DeleteRow |
| [X]      | [X]       | SpriteOp &2d  (45) : InsertCol |
| [X]      | [X]       | SpriteOp &2e  (46) : DeleteCol |
| [X]      | [X]       | SpriteOp &39  (57) : InsertDeleteRows |
| [X]      | [X]       | SpriteOp &3a  (58) : InsertDeleteColumns |
| [X]      | [X]       | SpriteOp &21  (33) : FlipAboutXAxis |
| [X]      | [X]       | SpriteOp &2f  (47) : FlipAboutYAxis |
| [X]      | [X]       | SpriteOp &36  (54) : RemoveLeftHandWastage |

| [ ]      | [ ]       | SpriteOp &24  (36) : SetPointerShape |

| [X]      | [X]       | SpriteOp &25  (37) : CreateRemovePalette |
| [X]      | [X]       | SpriteOp &1d  (29) : CreateMask |
| [X]      | [X]       | SpriteOp &1e  (30) : RemoveMask |
| [X]      | [X]       | SpriteOp &26  (38) : CreateRemoveAlphaMask |

| [X]      | [X]       | SpriteOp &29  (41) : ReadPixelColour |
| [X]      | [X]       | SpriteOp &2a  (42) : WritePixelColour |
| [X]      | [X]       | SpriteOp &2b  (43) : ReadPixelMask |
| [X]      | [X]       | SpriteOp &2c  (44) : WritePixelMask |

| [ ]      | [ ]       | SpriteOp &33  (51) : PaintCharScaled |
| [ ]      | [ ]       | SpriteOp &1c  (28) : PutSprite |
| [ ]      | [ ]       | SpriteOp &22  (34) : PutSpriteUserCoords |
| [ ]      | [ ]       | SpriteOp &34  (52) : PutSpriteScaled |
| [ ]      | [ ]       | SpriteOp &35  (53) : PutSpriteGreyScaled |
| [ ]      | [ ]       | SpriteOp &38  (56) : PutSpriteTransformed |
| [ ]      | [ ]       | SpriteOp &30  (48) : PlotMask |
| [ ]      | [ ]       | SpriteOp &31  (49) : PlotMaskUserCoords |
| [ ]      | [ ]       | SpriteOp &32  (50) : PlotMaskScaled |
| [ ]      | [ ]       | SpriteOp &37  (55) : PlotMaskTransformed |
| [ ]      | [ ]       | SpriteOp &41  (65) : TileSpriteScaled |

| [ ]      | [ ]       | SpriteOp &3c  (60) : SwitchOutputToSprite |
| [ ]      | [ ]       | SpriteOp &3d  (61) : SwitchOutputToMask |
| [ ]      | [ ]       | SpriteOp &3e  (62) : ReadSaveAreaSize |



### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None*


### Services

*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `SpriteV` |


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


