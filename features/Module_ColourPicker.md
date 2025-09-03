# Module: ColourPicker

## Discovered features


* Has services
* Has services fast
* Has swis
* Is c
* Uses console output
* Uses dynamic area
* Uses graphics output
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Desktop filter |
| [X]      | [ ]       | Resourcefs files |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*ModelList` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ColourPicker_RegisterModel` (&47700) |
| [X]      | [ ]       | `ColourPicker_DeregisterModel` (&47701) |
| [X]      | [ ]       | `ColourPicker_OpenDialogue` (&47702) |
| [X]      | [ ]       | `ColourPicker_CloseDialogue` (&47703) |
| [X]      | [ ]       | `ColourPicker_UpdateDialogue` (&47704) |
| [X]      | [ ]       | `ColourPicker_ReadDialogue` (&47705) |
| [X]      | [ ]       | `ColourPicker_SetColour` (&47706) |
| [X]      | [ ]       | `ColourPicker_HelpReply` (&47707) |
| [X]      | [ ]       | `ColourPicker_ModelSWI` (&47708) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ColourPickerLoaded` |
| [X]      | [ ]       | `Service_ModeChange` |
| [X]      | [ ]       | `Service_ResourceFSStarted` |
| [X]      | [ ]       | `Service_TerritoryStarted` |
| [X]      | [ ]       | `Service_WimpCloseDown` |
| [X]      | [ ]       | `Service_WimpPalette` |


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
| [X]      | [ ]       | `?` |
| [X]      | [ ]       | `Service_ColourPickerLoaded` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourPicker`
* `ColourTrans`
* `Filter`
* `MessageTrans`
* `ResourceFS`
* `SharedCLibrary`
* `TaskManager`
* `Territory`
* `Wimp`


