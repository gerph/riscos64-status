# Module: FontManager

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/fontmanager.html)

## Discovered features


* Has directory access
* Has file access
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

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Graphics extension |
| [ ]      | [ ]       | Graphics output |
| [ ]      | [ ]       | Anti-aliased rendering (up to 16 shades) |
| [ ]      | [ ]       | Sub-pixel positioning |
| [ ]      | [ ]       | Internal millipoint precision (1/72000 inch) |
| [ ]      | [ ]       | Understands font qualifiers |
| [ ]      | [ ]       | Supports Encodings |
| [ ]      | [ ]       | Parses Paint control sequences |
| [ ]      | [ ]       | Executes Paint control sequences |
| [ ]      | [ ]       | Control: Move (9) |
| [ ]      | [ ]       | Control: Move (11) |
| [ ]      | [ ]       | Control: Matrix (27) |
| [ ]      | [ ]       | Control: Matrix (28) |
| [ ]      | [ ]       | Control: GCOL (17) |
| [ ]      | [ ]       | Control: GCOL (18) |
| [ ]      | [ ]       | Control: RGB (19) |
| [ ]      | [ ]       | Control: Comment (21) |
| [ ]      | [ ]       | Control: Underline (25) |
| [ ]      | [ ]       | Control: Font (26) |
| [ ]      | [ ]       | Supports current font on SWI bits |
| [ ]      | [ ]       | Caches font bitmaps |
| [ ]      | [ ]       | Future RGB after sizing |
| [ ]      | [ ]       | Future font after sizing |
| [ ]      | [ ]       | Sizing strings |
| [ ]      | [ ]       | Sizing: Covered area |
| [ ]      | [ ]       | Sizing: Ending baseline |
| [ ]      | [ ]       | Sizing: Use OS units |
| [ ]      | [ ]       | Sizing: Use matrix |
| [ ]      | [ ]       | Sizing: Return matrix |
| [ ]      | [ ]       | Sizing: For caret position |
| [ ]      | [ ]       | Line split point calculation |
| [ ]      | [ ]       | Render: Matrix |
| [ ]      | [ ]       | Render: Clipped |
| [ ]      | [ ]       | Render: Justified |
| [ ]      | [ ]       | Render: Rubout |
| [ ]      | [ ]       | Render: Kerning |
| [ ]      | [ ]       | Render: Writing direction |
| [ ]      | [ ]       | Render: Use OS units |
| [ ]      | [ ]       | ListFonts enumeration |
| [ ]      | [ ]       | Reads RISC OS fonts |
| [ ]      | [ ]       | Supports outline fonts |
| [ ]      | [ ]       | Supports bitmap fonts |
| [ ]      | [ ]       | Creates font menus |
| [ ]      | [ ]       | Decodes font menus |
| [ ]      | [ ]       | Convert font path to draw paths |
| [ ]      | [ ]       | Font redirection to memory (Draw format) |
| [ ]      | [ ]       | Font caret rendering |
| [ ]      | [ ]       | Character bounding box calculations |
| [ ]      | [ ]       | String bounding box calculations |
| [ ]      | [ ]       | Supports font substitution |


### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Configure FontMax` |
| [ ]      | [ ]       | `*Configure FontMax1` |
| [ ]      | [ ]       | `*Configure FontMax2` |
| [ ]      | [ ]       | `*Configure FontMax3` |
| [ ]      | [ ]       | `*Configure FontMax4` |
| [ ]      | [ ]       | `*Configure FontMax5` |
| [ ]      | [ ]       | `*Configure FontSize` |
| [ ]      | [ ]       | `*FontCat` |
| [ ]      | [ ]       | `*FontInstall` |
| [ ]      | [ ]       | `*FontLibrary` |
| [ ]      | [ ]       | `*FontList` |
| [ ]      | [ ]       | `*FontRemove` |
| [ ]      | [ ]       | `*LoadFontCache` |
| [ ]      | [ ]       | `*SaveFontCache` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Font_CacheAddr` (&40080) |
| [ ]      | [ ]       | `Font_FindFont` (&40081) |
| [ ]      | [ ]       | `Font_LoseFont` (&40082) |
| [ ]      | [ ]       | `Font_ReadDefn` (&40083) |
| [ ]      | [ ]       | `Font_ReadInfo` (&40084) |
| [ ]      | [ ]       | `Font_StringWidth` (&40085) |
| [ ]      | [ ]       | `Font_Paint` (&40086) |
| [ ]      | [ ]       | `Font_Caret` (&40087) |
| [ ]      | [ ]       | `Font_ConverttoOS` (&40088) |
| [ ]      | [ ]       | `Font_Converttopoints` (&40089) |
| [ ]      | [ ]       | `Font_SetFont` (&4008A) |
| [ ]      | [ ]       | `Font_CurrentFont` (&4008B) |
| [ ]      | [ ]       | `Font_FutureFont` (&4008C) |
| [ ]      | [ ]       | `Font_FindCaret` (&4008D) |
| [ ]      | [ ]       | `Font_CharBBox` (&4008E) |
| [ ]      | [ ]       | `Font_ReadScaleFactor` (&4008F) |
| [ ]      | [ ]       | `Font_SetScaleFactor` (&40090) |
| [ ]      | [ ]       | `Font_ListFonts` (&40091) |
| [ ]      | [ ]       | `Font_SetFontColours` (&40092) |
| [ ]      | [ ]       | `Font_SetPalette` (&40093) |
| [ ]      | [ ]       | `Font_ReadThresholds` (&40094) |
| [ ]      | [ ]       | `Font_SetThresholds` (&40095) |
| [ ]      | [ ]       | `Font_FindCaretJ` (&40096) |
| [ ]      | [ ]       | `Font_StringBBox` (&40097) |
| [ ]      | [ ]       | `Font_ReadColourTable` (&40098) |
| [ ]      | [ ]       | `Font_MakeBitmap` (&40099) |
| [ ]      | [ ]       | `Font_UnCacheFile` (&4009A) |
| [ ]      | [ ]       | `Font_SetFontMax` (&4009B) |
| [ ]      | [ ]       | `Font_ReadFontMax` (&4009C) |
| [ ]      | [ ]       | `Font_ReadFontPrefix` (&4009D) |
| [ ]      | [ ]       | `Font_SwitchOutputToBuffer` (&4009E) |
| [ ]      | [ ]       | `Font_ReadFontMetrics` (&4009F) |
| [ ]      | [ ]       | `Font_DecodeMenu` (&400A0) |
| [ ]      | [ ]       | `Font_ScanString` (&400A1) |
| [ ]      | [ ]       | `Font_SetColourTable` (&400A2) |
| [ ]      | [ ]       | `Font_CurrentRGB` (&400A3) |
| [ ]      | [ ]       | `Font_FutureRGB` (&400A4) |
| [ ]      | [ ]       | `Font_ReadEncodingFilename` (&400A5) |
| [ ]      | [ ]       | `Font_FindField` (&400A6) |
| [ ]      | [ ]       | `Font_ApplyFields` (&400A7) |
| [ ]      | [ ]       | `Font_LookupFont` (&400A8) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_Print` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_TerritoryManagerLoaded` |
| [ ]      | [ ]       | `Service_WimpReportError` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UKPLOTV` |
| [ ]      | [ ]       | `UKVDU23V` |
| [ ]      | [ ]       | `VDUXV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_FontsChanged` |
| [ ]      | [ ]       | `Service_International` |


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
* `Draw`
* `Font`
* `Hourglass`
* `InverseTable`
* `MessageTrans`
* `PDriver`
* `Super`
* `Territory`
* `Wimp`


