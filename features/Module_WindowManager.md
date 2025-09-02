# Module: WindowManager

## Discovered features


* Accesses page table
* Does directory access
* Does file access
* Has application environment
* Has argument parsing
* Has background processing
* Has nvram state
* Has services
* Has services fast
* Has swis
* Is desktop application
* Sets variables
* Uses console input
* Uses console output
* Uses dynamic area
* Uses graphics output
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality


* Code variables
* Resourcefs files

### Commands


* `*Configure WimpAutoFrontDelay`
* `*Configure WimpAutoFrontIconBar`
* `*Configure WimpAutoMenuDelay`
* `*Configure WimpAutoScrollDelay`
* `*Configure WimpButtonType`
* `*Configure WimpClickSubmenu`
* `*Configure WimpDoubleClickDelay`
* `*Configure WimpDoubleClickMove`
* `*Configure WimpDragDelay`
* `*Configure WimpDragMove`
* `*Configure WimpFlags`
* `*Configure WimpFont`
* `*Configure WimpIconBarAcceleration`
* `*Configure WimpIconBarSpeed`
* `*Configure WimpIconiseButton`
* `*Configure WimpMenuDragDelay`
* `*Configure WimpSpritePrecedence`
* `*IconSprites`
* `*Pointer`
* `*ToolSprites`
* `*WimpKillSprite`
* `*WimpMode`
* `*WimpPalette`
* `*WimpSlot`
* `*WimpTask`
* `*WimpTextSelection`
* `*WimpToolOrder`
* `*WimpVisualFlags`
* `*WimpWriteDir`


### SWIs


* `Wimp_Initialise` (&400C0)
* `Wimp_CreateWindow` (&400C1)
* `Wimp_CreateIcon` (&400C2)
* `Wimp_DeleteWindow` (&400C3)
* `Wimp_DeleteIcon` (&400C4)
* `Wimp_OpenWindow` (&400C5)
* `Wimp_CloseWindow` (&400C6)
* `Wimp_Poll` (&400C7)
* `Wimp_RedrawWindow` (&400C8)
* `Wimp_UpdateWindow` (&400C9)
* `Wimp_GetRectangle` (&400CA)
* `Wimp_GetWindowState` (&400CB)
* `Wimp_GetWindowInfo` (&400CC)
* `Wimp_SetIconState` (&400CD)
* `Wimp_GetIconState` (&400CE)
* `Wimp_GetPointerInfo` (&400CF)
* `Wimp_DragBox` (&400D0)
* `Wimp_ForceRedraw` (&400D1)
* `Wimp_SetCaretPosition` (&400D2)
* `Wimp_GetCaretPosition` (&400D3)
* `Wimp_CreateMenu` (&400D4)
* `Wimp_DecodeMenu` (&400D5)
* `Wimp_WhichIcon` (&400D6)
* `Wimp_SetExtent` (&400D7)
* `Wimp_SetPointerShape` (&400D8)
* `Wimp_OpenTemplate` (&400D9)
* `Wimp_CloseTemplate` (&400DA)
* `Wimp_LoadTemplate` (&400DB)
* `Wimp_ProcessKey` (&400DC)
* `Wimp_CloseDown` (&400DD)
* `Wimp_StartTask` (&400DE)
* `Wimp_ReportError` (&400DF)
* `Wimp_GetWindowOutline` (&400E0)
* `Wimp_PollIdle` (&400E1)
* `Wimp_PlotIcon` (&400E2)
* `Wimp_SetMode` (&400E3)
* `Wimp_SetPalette` (&400E4)
* `Wimp_ReadPalette` (&400E5)
* `Wimp_SetColour` (&400E6)
* `Wimp_SendMessage` (&400E7)
* `Wimp_CreateSubMenu` (&400E8)
* `Wimp_SpriteOp` (&400E9)
* `Wimp_BaseOfSprites` (&400EA)
* `Wimp_BlockCopy` (&400EB)
* `Wimp_SlotSize` (&400EC)
* `Wimp_ReadPixTrans` (&400ED)
* `Wimp_ClaimFreeMemory` (&400EE)
* `Wimp_CommandWindow` (&400EF)
* `Wimp_TextColour` (&400F0)
* `Wimp_TransferBlock` (&400F1)
* `Wimp_ReadSysInfo` (&400F2)
* `Wimp_SetFontColours` (&400F3)
* `Wimp_GetMenuState` (&400F4)
* `Wimp_RegisterFilter` (&400F5)
* `Wimp_AddMessages` (&400F6)
* `Wimp_RemoveMessages` (&400F7)
* `Wimp_SetColourMapping` (&400F8)
* `Wimp_TextOp` (&400F9)
* `Wimp_SetWatchdogState` (&400FA)
* `Wimp_Extend` (&400FB)
* `Wimp_ResizeIcon` (&400FC)
* `Wimp_AutoScroll` (&400FD)


### Services


* `Service_ModeChange`
* `Service_NewApplication`
* `Service_Reset`
* `Service_ResourceFSDying`
* `Service_ResourceFSStarted`
* `Service_ResourceFSStarting`
* `Service_SwitchingOutputToSprite`
* `Service_ValidateAddress`


### Vectors


* `?`
* `EventV`
* `WrchV`


### Events


* `Event_Keyboard`


### UpCalls


*None*


---

## Issues calls to

### Services


* `Service_ErrorButtonPressed`
* `Service_ErrorEnding`
* `Service_ErrorStarting`
* `Service_Memory`
* `Service_MouseTrap`
* `Service_TaskPageOut`
* `Service_WimpCloseDown`
* `Service_WimpPalette`
* `Service_WimpRegisterFilters`
* `Service_WimpReportError`
* `Service_WimpSpritesMoved`
* `Service_WimpToolSpritesMoved`


### Vectors


* `?`


### Events


*None*


### UpCalls


*None*


### Modules


* `ClipboardHolder`
* `ColourMap`
* `ColourTrans`
* `Font`
* `Hourglass`
* `MessageTrans`
* `PDriver`
* `Portable`
* `ResourceFS`
* `ScreenBlanker`
* `TaskManager`
* `Territory`
* `Wimp`


