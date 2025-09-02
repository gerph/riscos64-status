# Module: FontManager

## Discovered features


* Does directory access
* Does file access
* Has nvram state
* Has services
* Has services fast
* Has swis
* Sets variables
* Uses console output
* Uses dynamic area
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality


*None found*

### Commands


* `*Configure FontMax`
* `*Configure FontMax1`
* `*Configure FontMax2`
* `*Configure FontMax3`
* `*Configure FontMax4`
* `*Configure FontMax5`
* `*FontCat`
* `*FontInstall`
* `*FontLibrary`
* `*FontRemove`
* `*LoadFontCache`
* `*SaveFontCache`


### SWIs


* `Font_CacheAddr` (&40080)
* `Font_FindFont` (&40081)
* `Font_LoseFont` (&40082)
* `Font_ReadDefn` (&40083)
* `Font_ReadInfo` (&40084)
* `Font_StringWidth` (&40085)
* `Font_Paint` (&40086)
* `Font_Caret` (&40087)
* `Font_ConverttoOS` (&40088)
* `Font_Converttopoints` (&40089)
* `Font_SetFont` (&4008A)
* `Font_CurrentFont` (&4008B)
* `Font_FutureFont` (&4008C)
* `Font_FindCaret` (&4008D)
* `Font_CharBBox` (&4008E)
* `Font_ReadScaleFactor` (&4008F)
* `Font_SetScaleFactor` (&40090)
* `Font_ListFonts` (&40091)
* `Font_SetFontColours` (&40092)
* `Font_SetPalette` (&40093)
* `Font_ReadThresholds` (&40094)
* `Font_SetThresholds` (&40095)
* `Font_FindCaretJ` (&40096)
* `Font_StringBBox` (&40097)
* `Font_ReadColourTable` (&40098)
* `Font_MakeBitmap` (&40099)
* `Font_UnCacheFile` (&4009A)
* `Font_SetFontMax` (&4009B)
* `Font_ReadFontMax` (&4009C)
* `Font_ReadFontPrefix` (&4009D)
* `Font_SwitchOutputToBuffer` (&4009E)
* `Font_ReadFontMetrics` (&4009F)
* `Font_DecodeMenu` (&400A0)
* `Font_ScanString` (&400A1)
* `Font_SetColourTable` (&400A2)
* `Font_CurrentRGB` (&400A3)
* `Font_FutureRGB` (&400A4)
* `Font_ReadEncodingFilename` (&400A5)
* `Font_FindField` (&400A6)
* `Font_ApplyFields` (&400A7)
* `Font_LookupFont` (&400A8)


### Services


* `Service_ModeChange`
* `Service_Print`
* `Service_Reset`
* `Service_TerritoryManagerLoaded`
* `Service_WimpReportError`


### Vectors


* `UKPLOTV`
* `UKVDU23V`
* `VDUXV`


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_FontsChanged`
* `Service_International`


### Vectors


* `PaletteV`


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `Draw`
* `Font`
* `Hourglass`
* `InverseTable`
* `MessageTrans`
* `PDriver`
* `Super`
* `Territory`
* `Wimp`


