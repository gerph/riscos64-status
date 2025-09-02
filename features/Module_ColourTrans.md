# Module: ColourTrans

## Discovered features


* Does directory access
* Does file access
* Has dynamic code
* Has services
* Has services fast
* Has swis
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


* `*ColourTransLoadings`
* `*ColourTransMap`
* `*ColourTransMapSize`


### SWIs


* `ColourTrans_SelectTable` (&40740)
* `ColourTrans_SelectGCOLTable` (&40741)
* `ColourTrans_ReturnGCOL` (&40742)
* `ColourTrans_SetGCOL` (&40743)
* `ColourTrans_ReturnColourNumber` (&40744)
* `ColourTrans_ReturnGCOLForMode` (&40745)
* `ColourTrans_ReturnColourNumberForMode` (&40746)
* `ColourTrans_ReturnOppGCOL` (&40747)
* `ColourTrans_SetOppGCOL` (&40748)
* `ColourTrans_ReturnOppColourNumber` (&40749)
* `ColourTrans_ReturnOppGCOLForMode` (&4074A)
* `ColourTrans_ReturnOppColourNumberForMode` (&4074B)
* `ColourTrans_GCOLToColourNumber` (&4074C)
* `ColourTrans_ColourNumberToGCOL` (&4074D)
* `ColourTrans_ReturnFontColours` (&4074E)
* `ColourTrans_SetFontColours` (&4074F)
* `ColourTrans_InvalidateCache` (&40750)
* `ColourTrans_SetCalibration` (&40751)
* `ColourTrans_ReadCalibration` (&40752)
* `ColourTrans_ConvertDeviceColour` (&40753)
* `ColourTrans_ConvertDevicePalette` (&40754)
* `ColourTrans_ConvertRGBToCIE` (&40755)
* `ColourTrans_ConvertCIEToRGB` (&40756)
* `ColourTrans_WriteCalibrationToFile` (&40757)
* `ColourTrans_ConvertRGBToHSV` (&40758)
* `ColourTrans_ConvertHSVToRGB` (&40759)
* `ColourTrans_ConvertRGBToCMYK` (&4075A)
* `ColourTrans_ConvertCMYKToRGB` (&4075B)
* `ColourTrans_ReadPalette` (&4075C)
* `ColourTrans_WritePalette` (&4075D)
* `ColourTrans_SetColour` (&4075E)
* `ColourTrans_MiscOp` (&4075F)
* `ColourTrans_WriteLoadingsToFile` (&40760)
* `ColourTrans_SetTextColour` (&40761)
* `ColourTrans_SetOppTextColour` (&40762)
* `ColourTrans_GenerateTable` (&40763)


### Services


* `Service_ModeChange`
* `Service_Reset`
* `Service_ResourceFSStarted`
* `Service_SwitchingOutputToSprite`
* `Service_WimpSaveDesktop`


### Vectors


* `ColourV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_CalibrationChanged`
* `Service_InvalidateCache`


### Vectors


* `ColourV`
* `PaletteV`


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `Font`
* `MessageTrans`
* `Squash`


