# Module: TerritoryManager

## Discovered features


* Has directory access
* Has nvram state
* Has services
* Has services fast
* Has swis
* Sets variables
* Uses console output
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Configure DST` |
| [ ]      | [ ]       | `*Configure NODST` |
| [ ]      | [ ]       | `*Configure Territory` |
| [ ]      | [ ]       | `*Configure TimeZone` |
| [ ]      | [ ]       | `*Territories` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Territory_Number` (&43040) |
| [ ]      | [ ]       | `Territory_Register` (&43041) |
| [ ]      | [ ]       | `Territory_Deregister` (&43042) |
| [ ]      | [ ]       | `Territory_NumberToName` (&43043) |
| [ ]      | [ ]       | `Territory_Exists` (&43044) |
| [ ]      | [ ]       | `Territory_AlphabetNumberToName` (&43045) |
| [ ]      | [ ]       | `Territory_SelectAlphabet` (&43046) |
| [ ]      | [ ]       | `Territory_SetTime` (&43047) |
| [ ]      | [ ]       | `Territory_ReadCurrentTimeZone` (&43048) |
| [ ]      | [ ]       | `Territory_ConvertTimeToUTCOrdinals` (&43049) |
| [ ]      | [ ]       | `Territory_ReadTimeZones` (&4304A) |
| [ ]      | [ ]       | `Territory_ConvertDateAndTime` (&4304B) |
| [ ]      | [ ]       | `Territory_ConvertStandardDateAndTime` (&4304C) |
| [ ]      | [ ]       | `Territory_ConvertStandardDate` (&4304D) |
| [ ]      | [ ]       | `Territory_ConvertStandardTime` (&4304E) |
| [ ]      | [ ]       | `Territory_ConvertTimeToOrdinals` (&4304F) |
| [ ]      | [ ]       | `Territory_ConvertTimeStringToOrdinals` (&43050) |
| [ ]      | [ ]       | `Territory_ConvertOrdinalsToTime` (&43051) |
| [ ]      | [ ]       | `Territory_Alphabet` (&43052) |
| [ ]      | [ ]       | `Territory_AlphabetIdentifier` (&43053) |
| [ ]      | [ ]       | `Territory_SelectKeyboardHandler` (&43054) |
| [ ]      | [ ]       | `Territory_WriteDirection` (&43055) |
| [ ]      | [ ]       | `Territory_CharacterPropertyTable` (&43056) |
| [ ]      | [ ]       | `Territory_LowerCaseTable` (&43057) |
| [ ]      | [ ]       | `Territory_UpperCaseTable` (&43058) |
| [ ]      | [ ]       | `Territory_ControlTable` (&43059) |
| [ ]      | [ ]       | `Territory_PlainTable` (&4305A) |
| [ ]      | [ ]       | `Territory_ValueTable` (&4305B) |
| [ ]      | [ ]       | `Territory_RepresentationTable` (&4305C) |
| [ ]      | [ ]       | `Territory_Collate` (&4305D) |
| [ ]      | [ ]       | `Territory_ReadSymbols` (&4305E) |
| [ ]      | [ ]       | `Territory_ReadCalendarInformation` (&4305F) |
| [ ]      | [ ]       | `Territory_NameToNumber` (&43060) |
| [ ]      | [ ]       | `Territory_TransformString` (&43061) |
| [ ]      | [ ]       | `Territory_Reserved1` (&43062) |
| [ ]      | [ ]       | `Territory_Reserved2` (&43063) |
| [ ]      | [ ]       | `Territory_Reserved3` (&43064) |
| [ ]      | [ ]       | `Territory_Reserved4` (&43065) |
| [ ]      | [ ]       | `Territory_Reserved5` (&43066) |
| [ ]      | [ ]       | `Territory_Reserved6` (&43067) |
| [ ]      | [ ]       | `Territory_Reserved7` (&43068) |
| [ ]      | [ ]       | `Territory_Reserved8` (&43069) |
| [ ]      | [ ]       | `Territory_Reserved9` (&4306A) |
| [ ]      | [ ]       | `Territory_Reserved10` (&4306B) |
| [ ]      | [ ]       | `Territory_Reserved11` (&4306C) |
| [ ]      | [ ]       | `Territory_Reserved12` (&4306D) |
| [ ]      | [ ]       | `Territory_Reserved13` (&4306E) |
| [ ]      | [ ]       | `Territory_Reserved14` (&4306F) |
| [ ]      | [ ]       | `Territory_Reserved15` (&43070) |
| [ ]      | [ ]       | `Territory_Reserved16` (&43071) |
| [ ]      | [ ]       | `Territory_Reserved17` (&43072) |
| [ ]      | [ ]       | `Territory_Reserved18` (&43073) |
| [ ]      | [ ]       | `Territory_Reserved19` (&43074) |
| [ ]      | [ ]       | `Territory_ConvertTextToString` (&43075) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_PostInit` |
| [ ]      | [ ]       | `Service_UKConfig` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_International` |
| [ ]      | [ ]       | `Service_TerritoryManagerLoaded` |
| [ ]      | [ ]       | `Service_TerritoryStarted` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ADFS`
* `ColourTrans`
* `MessageTrans`
* `Squash`
* `Territory`
* `Wimp`


