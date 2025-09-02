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


* Desktop filter
* Resourcefs files

### Commands


* `*ModelList`


### SWIs


* `ColourPicker_RegisterModel` (&47700)
* `ColourPicker_DeregisterModel` (&47701)
* `ColourPicker_OpenDialogue` (&47702)
* `ColourPicker_CloseDialogue` (&47703)
* `ColourPicker_UpdateDialogue` (&47704)
* `ColourPicker_ReadDialogue` (&47705)
* `ColourPicker_SetColour` (&47706)
* `ColourPicker_HelpReply` (&47707)
* `ColourPicker_ModelSWI` (&47708)


### Services


* `Service_ColourPickerLoaded`
* `Service_ModeChange`
* `Service_ResourceFSStarted`
* `Service_TerritoryStarted`
* `Service_WimpCloseDown`
* `Service_WimpPalette`


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


* `?`
* `Service_ColourPickerLoaded`


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


