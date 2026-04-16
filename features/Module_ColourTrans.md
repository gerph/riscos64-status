# Module: ColourTrans


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/colourtrans.html)

## Discovered features


* Has directory access
* Has dynamic code
* Has file access
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
| [ ]      | [ ]       | Device-independent RGB colour selection |
| [ ]      | [ ]       | Weighted least-squares colour mapping (R:2, G:4, B:1) |
| [ ]      | [ ]       | Colour calibration for monitors and printers |
| [ ]      | [ ]       | Pixel translation table generation for sprites |
| [ ]      | [ ]       | Anti-aliasing colour range calculation for Font Manager |
| [ ]      | [ ]       | Colour model conversion: RGB to CIE (XYZ) |
| [ ]      | [ ]       | Colour model conversion: RGB to HSV |
| [ ]      | [ ]       | Colour model conversion: RGB to CMYK |
| [ ]      | [ ]       | Calibration table interpolation |
| [ ]      | [ ]       | Colour mapping cache management |
| [ ]      | [ ]       | Support for 2-colour modes |
| [ ]      | [ ]       | Support for 4-colour modes |
| [ ]      | [ ]       | Support for 16-colour modes |
| [ ]      | [ ]       | Support for 256-colour compacted palettes |
| [ ]      | [ ]       | Support for 256-colour fully-specified palettes |
| [ ]      | [ ]       | Support for 16-bit palettes |
| [ ]      | [ ]       | Support for 32-bit palettes |
| [ ]      | [ ]       | PixTrans: Support for targetting 2-colour modes |
| [ ]      | [ ]       | PixTrans: Support for targetting 4-colour modes |
| [ ]      | [ ]       | PixTrans: Support for targetting 16-colour modes |
| [ ]      | [ ]       | PixTrans: Support for targetting 256-colour compacted palettes |
| [ ]      | [ ]       | PixTrans: Support for targetting 256-colour fully-specified palettes |
| [ ]      | [ ]       | PixTrans: Support for targetting 16-bit palettes |
| [ ]      | [ ]       | PixTrans: Support for targetting 32-bit palettes |


### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*ColourTransLoadings` |
| [ ]      | [ ]       | `*ColourTransMap` |
| [ ]      | [ ]       | `*ColourTransMapSize` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ColourTrans_SelectTable` (&40740) |
| [ ]      | [ ]       | `ColourTrans_SelectGCOLTable` (&40741) |
| [ ]      | [ ]       | `ColourTrans_ReturnGCOL` (&40742) |
| [ ]      | [ ]       | `ColourTrans_SetGCOL` (&40743) |
| [ ]      | [ ]       | `ColourTrans_ReturnColourNumber` (&40744) |
| [ ]      | [ ]       | `ColourTrans_ReturnGCOLForMode` (&40745) |
| [ ]      | [ ]       | `ColourTrans_ReturnColourNumberForMode` (&40746) |
| [ ]      | [ ]       | `ColourTrans_ReturnOppGCOL` (&40747) |
| [ ]      | [ ]       | `ColourTrans_SetOppGCOL` (&40748) |
| [ ]      | [ ]       | `ColourTrans_ReturnOppColourNumber` (&40749) |
| [ ]      | [ ]       | `ColourTrans_ReturnOppGCOLForMode` (&4074A) |
| [ ]      | [ ]       | `ColourTrans_ReturnOppColourNumberForMode` (&4074B) |
| [ ]      | [ ]       | `ColourTrans_GCOLToColourNumber` (&4074C) |
| [ ]      | [ ]       | `ColourTrans_ColourNumberToGCOL` (&4074D) |
| [ ]      | [ ]       | `ColourTrans_ReturnFontColours` (&4074E) |
| [ ]      | [ ]       | `ColourTrans_SetFontColours` (&4074F) |
| [ ]      | [ ]       | `ColourTrans_InvalidateCache` (&40750) |
| [ ]      | [ ]       | `ColourTrans_SetCalibration` (&40751) |
| [ ]      | [ ]       | `ColourTrans_ReadCalibration` (&40752) |
| [ ]      | [ ]       | `ColourTrans_ConvertDeviceColour` (&40753) |
| [ ]      | [ ]       | `ColourTrans_ConvertDevicePalette` (&40754) |
| [ ]      | [ ]       | `ColourTrans_ConvertRGBToCIE` (&40755) |
| [ ]      | [ ]       | `ColourTrans_ConvertCIEToRGB` (&40756) |
| [ ]      | [ ]       | `ColourTrans_WriteCalibrationToFile` (&40757) |
| [ ]      | [ ]       | `ColourTrans_ConvertRGBToHSV` (&40758) |
| [ ]      | [ ]       | `ColourTrans_ConvertHSVToRGB` (&40759) |
| [ ]      | [ ]       | `ColourTrans_ConvertRGBToCMYK` (&4075A) |
| [ ]      | [ ]       | `ColourTrans_ConvertCMYKToRGB` (&4075B) |
| [ ]      | [ ]       | `ColourTrans_ReadPalette` (&4075C) |
| [ ]      | [ ]       | `ColourTrans_WritePalette` (&4075D) |
| [ ]      | [ ]       | `ColourTrans_SetColour` (&4075E) |
| [ ]      | [ ]       | `ColourTrans_MiscOp` (&4075F) |
| [ ]      | [ ]       | `ColourTrans_WriteLoadingsToFile` (&40760) |
| [ ]      | [ ]       | `ColourTrans_SetTextColour` (&40761) |
| [ ]      | [ ]       | `ColourTrans_SetOppTextColour` (&40762) |
| [ ]      | [ ]       | `ColourTrans_GenerateTable` (&40763) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_ResourceFSStarted` |
| [ ]      | [ ]       | `Service_SwitchingOutputToSprite` |
| [ ]      | [ ]       | `Service_WimpSaveDesktop` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ColourV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_CalibrationChanged` |
| [ ]      | [ ]       | `Service_InvalidateCache` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ColourV` |
| [ ]      | [ ]       | `PaletteV` |


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `Font`
* `MessageTrans`
* `Squash`


