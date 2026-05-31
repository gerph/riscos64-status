# Module: CDFSdriver

## Discovered features


* Has cd access
* Has swis
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [x]      | [x]       | `CD_ReadData` (&41241) |
| [x]      | [x]       | `CD_SeekTo` (&41242) |
| [x]      | [x]       | `CD_DriveStatus` (&41243) |
| [x]      | [x]       | `CD_DriveReady` (&41244) |
| [x]      | [x]       | `CD_GetParameters` (&41245) |
| [x]      | [x]       | `CD_SetParameters` (&41246) |
| [x]      | [x]       | `CD_OpenDrawer` (&41247) |
| [x]      | [x]       | `CD_EjectButton` (&41248) |
| [x]      | [x]       | `CD_EnquireAddress` (&41249) |
| [x]      | [x]       | `CD_EnquireDataMode` (&4124A) |
| [x]      | [x]       | `CD_PlayAudio` (&4124B) |
| [x]      | [x]       | `CD_PlayTrack` (&4124C) |
| [x]      | [x]       | `CD_AudioPause` (&4124D) |
| [x]      | [x]       | `CD_EnquireTrack` (&4124E) |
| [x]      | [x]       | `CD_ReadSubChannel` (&4124F) |
| [x]      | [x]       | `CD_CheckDrive` (&41250) |
| [x]      | [x]       | `CD_DiscChanged` (&41251) |
| [x]      | [x]       | `CD_StopDisc` (&41252) |
| [x]      | [x]       | `CD_DiscUsed` (&41253) |
| [x]      | [x]       | `CD_AudioStatus` (&41254) |
| [x]      | [x]       | `CD_Inquiry` (&41255) |
| [x]      | [x]       | `CD_DiscHasChanged` (&41256) |
| [x]      | [x]       | `CD_Control` (&41257) |
| [x]      | [x]       | `CD_Supported` (&41258) |
| [x]      | [x]       | `CD_Prefetch` (&41259) |
| [x]      | [x]       | `CD_Reset` (&4125A) |
| [x]      | [x]       | `CD_CloseDrawer` (&4125B) |
| [x]      | [x]       | `CD_IsDrawerLocked` (&4125C) |
| [x]      | [x]       | `CD_AudioControl` (&4125D) |
| [ ]      | [ ]       | `CD_LastError` (&4125E) |
| [x]      | [x]       | `CD_AudioLevel` (&4125F) |
| [x]      | [x]       | `CD_Register` (&41260) |
| [x]      | [x]       | `CD_Unregister` (&41261) |
| [ ]      | [ ]       | `CD_ByteCopy` (&41262) |
| [x]      | [x]       | `CD_Identify` (&41263) |
| [x]      | [x]       | `CD_ConvertToLBA` (&41264) |
| [x]      | [x]       | `CD_ConvertToMSF` (&41265) |
| [x]      | [x]       | `CD_ReadAudio` (&41266) |
| [x]      | [x]       | `CD_ReadUserData` (&41267) |
| [x]      | [x]       | `CD_SeekUserData` (&41268) |
| [x]      | [x]       | `CD_GetAudioParms` (&41269) |
| [x]      | [x]       | `CD_SetAudioParms` (&4126A) |


### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UKSWIV` |


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


* `CD`
* `MessageTrans`
* `SCSI`

