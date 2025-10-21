# Module: Kernel (OS_Word)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component provides `OS_Word` implementation. The
`OS_Word` system doesn't need to be complete; very limited functionality
is needed for many parts of the system to function. Indeed, many parts should
really be moved out of `OS_Word`.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/osword.html)

Index: [PRM](http://www.riscos.com/support/developers/prm_index/oswords.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Calls vector for `OS_Word` |
| [ ]      | [ ]       | `OS_Word 0`   (ReadLine) |
| [ ]      | [ ]       | `OS_Word 1`   (ReadSystemClock) |
| [ ]      | [ ]       | `OS_Word 2`   (WriteSystemClock) |
| [ ]      | [ ]       | ~`OS_Word 3`   (ReadIntervalTimer)~ |
| [ ]      | [ ]       | ~`OS_Word 4`   (WriteIntervalTimer)~ |
| [ ]      | [ ]       | ~`OS_Word 5`   (ReadIOProcessorMemory)~ |
| [ ]      | [ ]       | ~`OS_Word 6`   (WriteIOProcessorMemory)~ |
| [ ]      | [ ]       | ~`OS_Word 7`   (GenerateSound)~ |
| [ ]      | [ ]       | ~`OS_Word 8`   (DefineSoundEnvelope)~ |
| [ ]      | [ ]       | `OS_Word 9`   (ReadPixelColour) |
| [ ]      | [ ]       | `OS_Word 10`  (ReadCharacterDefinition) |
| [ ]      | [ ]       | `OS_Word 11`  (ReadPalette) |
| [ ]      | [ ]       | `OS_Word 12`  (WritePalette) |
| [ ]      | [ ]       | ~`OS_Word 13`  (ReadGraphicsPositions)~ |
| [ ]      | [ ]       | `OS_Word 14`  (ReadRealTimeClock) |
| [ ]      | [ ]       | `OS_Word 15`  (WriteRealTimeClock) |
| [ ]      | [ ]       | ~`OS_Word 16`  (Econet_Transmit)~ |
| [ ]      | [ ]       | ~`OS_Word 17`  (Econet_Receive)~ |
| [ ]      | [ ]       | ~`OS_Word 18`  (Econet_ReadArguments)~ |
| [ ]      | [ ]       | ~`OS_Word 19`  (Econet_ReadAndSetMisc)~ |
| [ ]      | [ ]       | ~`OS_Word 20`  (Econet_DoFSOp)~ |
| [ ]      | [ ]       | `OS_Word 21`  (DefinePointerAndMouse) |
| [ ]      | [ ]       | ~`OS_Word 22`  (WriteScreenBaseAddress)~ |
| [ ]      | [ ]       | ~`OS_Word 40`  (Millepede_Graphics)~ |
| [ ]      | [ ]       | ~`OS_Word 64`  (AMS_Mouse1)~ |
| [ ]      | [ ]       | ~`OS_Word 65`  (AMS_Mouse2)~ |
| [ ]      | [ ]       | ~`OS_Word 66`  (DFS_SRAMTransfer)~ |
| [ ]      | [ ]       | ~`OS_Word 67`  (DFS_SRAMLoadOrSave)~ |
| [ ]      | [ ]       | ~`OS_Word 68`  (AMX_MouseSupport)~ |
| [ ]      | [ ]       | ~`OS_Word 69`  (Aries_RAMMoveOrSwap)~ |
| [ ]      | [ ]       | ~`OS_Word 70`  (BBCSoft)~ |
| [ ]      | [ ]       | ~`OS_Word 71`  (Howsoft)~ |
| [ ]      | [ ]       | ~`OS_Word 95`  (BBCSoft_Monitor)~ |
| [ ]      | [ ]       | ~`OS_Word 96`  (VFS_ReadSequenceNumber)~ |
| [ ]      | [ ]       | ~`OS_Word 97`  (VFS_UnAllocated)~ |
| [ ]      | [ ]       | ~`OS_Word 98`  (VFS_DoCommand)~ |
| [ ]      | [ ]       | ~`OS_Word 99`  (VFS_ReadLastErrorInfo)~ |
| [ ]      | [ ]       | ~`OS_Word 100` (VFS_ReadCurrentFCode)~ |
| [ ]      | [ ]       | ~`OS_Word 112` (ADFS_ReadSequenceNumber)~ |
| [ ]      | [ ]       | ~`OS_Word 113` (ADFS_ReadFreeSpace)~ |
| [ ]      | [ ]       | ~`OS_Word 114` (ADFS_DoCommand)~ |
| [ ]      | [ ]       | ~`OS_Word 115` (ADFS_ReadLastErrorInfo)~ |
| [ ]      | [ ]       | ~`OS_Word 122` (TeleText)~ |
| [ ]      | [ ]       | ~`OS_Word 123` (Modem)~ |
| [ ]      | [ ]       | ~`OS_Word 125` (DFS_ReadSequenceNumber)~ |
| [ ]      | [ ]       | ~`OS_Word 126` (DFS_ReadDiscSize)~ |
| [ ]      | [ ]       | ~`OS_Word 127` (DFS_DoCommand)~ |
| [ ]      | [ ]       | ~`OS_Word 128` (IEEE_DoCommand)~ |
| [ ]      | [ ]       | ~`OS_Word 130` (CambridgeRing_Parameters)~ |
| [ ]      | [ ]       | ~`OS_Word 131` (CambridgeRing_Transmit)~ |
| [ ]      | [ ]       | ~`OS_Word 132` (CambridgeRing_Poll)~ |
| [ ]      | [ ]       | ~`OS_Word 144` (TransportService)~ |
| [ ]      | [ ]       | ~`OS_Word 160` (IsolatedWordREcogniser)~ |

The list here should not be assumed to be a requirement for the `OS_Word` calls to be implemented, but an indication of where they were implemented previously.
Those marked with a strikeout are not expected to be required.


### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_Word` (&7) |



### Services

*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `WordV` |


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


