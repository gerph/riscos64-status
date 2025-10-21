# Module: Kernel (OS_Byte)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component provides `OS_Byte` implementation. The
`OS_Byte` system doesn't need to be complete; very limited functionality
is needed for many parts of the system to function.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/osbyte.html)

Index: [PRM](http://www.riscos.com/support/developers/prm_index/osbytes.html#51005)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Calls vector for `OS_Byte` |
| [ ]      | [ ]       | R/W calls return the next OS_Byte entry by default |
| [ ]      | [ ]       | `OS_Byte 0`   (ReadMOSVersion) |
| [ ]      | [ ]       | `OS_Byte 1`   (ReadUserFlag) |
| [ ]      | [ ]       | `OS_Byte 3`   (SelectOutputStreams) |
| [ ]      | [ ]       | `OS_Byte 4`   (WriteCursorKeyStatus) |
| [ ]      | [ ]       | `OS_Byte 5`   (SetPrinterType) |
| [ ]      | [ ]       | `OS_Byte 6`   (SetPrinterIgnore) |
| [ ]      | [ ]       | `OS_Byte 7`   (WriteSerialRxRate) |
| [ ]      | [ ]       | `OS_Byte 8`   (WriteSerialTxRate) |
| [ ]      | [ ]       | `OS_Byte 9`   (WriteFirstFlashDuration) |
| [ ]      | [ ]       | `OS_Byte 10`  (WriteSecondFlashDuration) |
| [ ]      | [ ]       | `OS_Byte 11`  (WriteKeyAutoRepeatDelay) |
| [ ]      | [ ]       | `OS_Byte 12`  (WriteKeyAutoRepeatRate) |
| [ ]      | [ ]       | `OS_Byte 13`  (DisableEvent) |
| [ ]      | [ ]       | `OS_Byte 14`  (EnableEvent) |
| [ ]      | [ ]       | `OS_Byte 15`  (FlushAllBuffers) |
| [ ]      | [ ]       | `OS_Byte 18`  (ResetFunctionKeys) |
| [ ]      | [ ]       | `OS_Byte 19`  (WaitForVSync) |
| [ ]      | [ ]       | `OS_Byte 20`  (ResetCharacterDefinitions) |
| [ ]      | [ ]       | `OS_Byte 21`  (FlushBuffer) |
| [ ]      | [ ]       | `OS_Byte 25`  (ResetCharacterDefinitionGroups) |
| [ ]      | [ ]       | `OS_Byte 70`  (ChangeCountry) |
| [ ]      | [ ]       | `OS_Byte 71`  (ChangeKeyboardAlphabet) |
| [ ]      | [ ]       | `OS_Byte 106` (SelectPointerShape) |
| [ ]      | [ ]       | `OS_Byte 112` (SelectScreenRender) |
| [ ]      | [ ]       | `OS_Byte 113` (SelectScreenDisplay) |
| [ ]      | [ ]       | `OS_Byte 117` (ReadVDUStatus) |
| [ ]      | [ ]       | `OS_Byte 118` (UpdateKeyboardLEDs) |
| [ ]      | [ ]       | `OS_Byte 121` (KeyboardScan) |
| [ ]      | [ ]       | `OS_Byte 122` (KeyboardScanLimited) |
| [ ]      | [ ]       | `OS_Byte 124` (ClearEscape) |
| [ ]      | [ ]       | `OS_Byte 125` (SetEscape) |
| [ ]      | [ ]       | `OS_Byte 126` (AcknowledgeEscape) |
| [ ]      | [ ]       | `OS_Byte 127` (CheckEOF) |
| [ ]      | [ ]       | `OS_Byte 128` (ReadFreeOrUsedBuffer) |
| [ ]      | [ ]       | `OS_Byte 129` (ReadKeyboard) |
| [ ]      | [ ]       | `OS_Byte 134` (ReadTextInputCursor) |
| [ ]      | [ ]       | `OS_Byte 135` (ReadTextInputCharacter) |
| [ ]      | [ ]       | `OS_Byte 138` (InsertIntoBuffer) |
| [ ]      | [ ]       | `OS_Byte 139` (SetFSOptions) |
| [ ]      | [ ]       | `OS_Byte 144` (SetVerticalShiftAndInterlace) |
| [ ]      | [ ]       | `OS_Byte 145` (RemoveFromBuffer) |
| [ ]      | [ ]       | `OS_Byte 152` (ExamineBuffer) |
| [ ]      | [ ]       | `OS_Byte 153` (InsertIntoInputBuffer) |
| [ ]      | [ ]       | `OS_Byte 160` (ReadVduVariable) |
| [ ]      | [ ]       | `OS_Byte 161` (ReadNVRAM) |
| [ ]      | [ ]       | `OS_Byte 162` (WriteNVRAM) |
| [ ]      | [ ]       | `OS_Byte 163` (ReadWriteGraphicsInformation) |
| [ ]      | [ ]       | `OS_Byte 165` (ReadTextOutputCursor) |
| [ ]      | [ ]       | `OS_Byte 182` (RWPrinterNoIgnore) |
| [ ]      | [ ]       | `OS_Byte 194` (ReadSecondFlashDuration) |
| [ ]      | [ ]       | `OS_Byte 195` (ReadFirstFlashDuration) |
| [ ]      | [ ]       | `OS_Byte 196` (RWKeyAutoRepeatDelay) |
| [ ]      | [ ]       | `OS_Byte 197` (RWKeyAutoRepeatRate) |
| [ ]      | [ ]       | `OS_Byte 198` (RWExecFileHandle) |
| [ ]      | [ ]       | `OS_Byte 199` (RWSpoolFileHandle) |
| [ ]      | [ ]       | `OS_Byte 200` (RWBreakEscapeEffect) |
| [ ]      | [ ]       | `OS_Byte 201` (RWKeyboardDisable) |
| [ ]      | [ ]       | `OS_Byte 202` (RWKeyboardStatus) |
| [ ]      | [ ]       | `OS_Byte 210` (RWSoundSuppression) |
| [ ]      | [ ]       | `OS_Byte 211` (RWBellChannel) |
| [ ]      | [ ]       | `OS_Byte 212` (RWBellVolume) |
| [ ]      | [ ]       | `OS_Byte 213` (RWBellFrequency) |
| [ ]      | [ ]       | `OS_Byte 214` (RWBellDuration) |
| [ ]      | [ ]       | `OS_Byte 217` (RWPagedModeLineCount) |
| [ ]      | [ ]       | `OS_Byte 218` (RWBytesInVduQueue) |
| [ ]      | [ ]       | `OS_Byte 219` (RWTabKeyCode) |
| [ ]      | [ ]       | `OS_Byte 220` (RWEscapeCharacter) |
| [ ]      | [ ]       | `OS_Byte 221` (RWInputBufferInterpretationC0) |
| [ ]      | [ ]       | `OS_Byte 222` (RWInputBufferInterpretationD0) |
| [ ]      | [ ]       | `OS_Byte 223` (RWInputBufferInterpretationE0) |
| [ ]      | [ ]       | `OS_Byte 224` (RWInputBufferInterpretationF0) |
| [ ]      | [ ]       | `OS_Byte 225` (RWInputBufferInterpretation80) |
| [ ]      | [ ]       | `OS_Byte 226` (RWInputBufferInterpretation90) |
| [ ]      | [ ]       | `OS_Byte 227` (RWInputBufferInterpretationA0) |
| [ ]      | [ ]       | `OS_Byte 228` (RWInputBufferInterpretationB0) |
| [ ]      | [ ]       | `OS_Byte 229` (RWEscapeStatus) |
| [ ]      | [ ]       | `OS_Byte 236` (RWCharacterDestinationStatus) |
| [ ]      | [ ]       | `OS_Byte 237` (RWCursorKeyStatus) |
| [ ]      | [ ]       | `OS_Byte 240` (RWCountry) |
| [ ]      | [ ]       | `OS_Byte 245` (RWPrinterType) |
| [ ]      | [ ]       | `OS_Byte 246` (RWPrinterIgnore) |
| [ ]      | [ ]       | `OS_Byte 250` (ReadScreenBankRender) |
| [ ]      | [ ]       | `OS_Byte 251` (ReadScreenBankDisplay) |

The list here should not be assumed to be a requirement for the `OS_Byte` calls to be implemented, but an indication of where they were implemented previously.


### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_Byte` (&6) |



### Services

*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `ByteV` |


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
| [ ]      | [ ]       | `ByteV` |


### Events


*None*


### UpCalls


*None*


### Modules


*None*


