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
| [ ]      | [ ]       | `CD_ReadData` (&41241) |
| [ ]      | [ ]       | `CD_SeekTo` (&41242) |
| [ ]      | [ ]       | `CD_DriveStatus` (&41243) |
| [ ]      | [ ]       | `CD_DriveReady` (&41244) |
| [ ]      | [ ]       | `CD_GetParameters` (&41245) |
| [ ]      | [ ]       | `CD_SetParameters` (&41246) |
| [ ]      | [ ]       | `CD_OpenDrawer` (&41247) |
| [ ]      | [ ]       | `CD_EjectButton` (&41248) |
| [ ]      | [ ]       | `CD_EnquireAddress` (&41249) |
| [ ]      | [ ]       | `CD_EnquireDataMode` (&4124A) |
| [ ]      | [ ]       | `CD_PlayAudio` (&4124B) |
| [ ]      | [ ]       | `CD_PlayTrack` (&4124C) |
| [ ]      | [ ]       | `CD_AudioPause` (&4124D) |
| [ ]      | [ ]       | `CD_EnquireTrack` (&4124E) |
| [ ]      | [ ]       | `CD_ReadSubChannel` (&4124F) |
| [ ]      | [ ]       | `CD_CheckDrive` (&41250) |
| [ ]      | [ ]       | `CD_DiscChanged` (&41251) |
| [ ]      | [ ]       | `CD_StopDisc` (&41252) |
| [ ]      | [ ]       | `CD_DiscUsed` (&41253) |
| [ ]      | [ ]       | `CD_AudioStatus` (&41254) |
| [ ]      | [ ]       | `CD_Inquiry` (&41255) |
| [ ]      | [ ]       | `CD_DiscHasChanged` (&41256) |
| [ ]      | [ ]       | `CD_Control` (&41257) |
| [ ]      | [ ]       | `CD_Supported` (&41258) |
| [ ]      | [ ]       | `CD_Prefetch` (&41259) |
| [ ]      | [ ]       | `CD_Reset` (&4125A) |
| [ ]      | [ ]       | `CD_CloseDrawer` (&4125B) |
| [ ]      | [ ]       | `CD_IsDrawerLocked` (&4125C) |
| [ ]      | [ ]       | `CD_AudioControl` (&4125D) |
| [ ]      | [ ]       | `CD_LastError` (&4125E) |
| [ ]      | [ ]       | `CD_AudioLevel` (&4125F) |
| [ ]      | [ ]       | `CD_Register` (&41260) |
| [ ]      | [ ]       | `CD_Unregister` (&41261) |
| [ ]      | [ ]       | `CD_ByteCopy` (&41262) |
| [ ]      | [ ]       | `CD_Identify` (&41263) |
| [ ]      | [ ]       | `CD_ConvertToLBA` (&41264) |
| [ ]      | [ ]       | `CD_ConvertToMSF` (&41265) |
| [ ]      | [ ]       | `CD_ReadAudio` (&41266) |
| [ ]      | [ ]       | `CD_ReadUserData` (&41267) |
| [ ]      | [ ]       | `CD_SeekUserData` (&41268) |
| [ ]      | [ ]       | `CD_GetAudioParms` (&41269) |
| [ ]      | [ ]       | `CD_SetAudioParms` (&4126A) |


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


