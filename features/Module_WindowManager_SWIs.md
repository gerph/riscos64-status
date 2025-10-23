# Module: WindowManager (SWIs)

## Summary

The SWI calls for the WindowManager can be implemented as a simple set of
dispatches that (initially) do nothing. These can then be expanded out
to call the different subcomponents of the WindowManager as necessary.
There are some parts of the SWI handling that are generic enough that they
can be implemented here.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | All SWIs can be dispatched internally |
| [ ]      | [ ]       | SWIs which need a task can be rejected |
| [ ]      | [ ]       | SWIs which need a window can be rejected |
| [ ]      | [ ]       | `Wimp_Extend 3` (SWI entry claim) |
| [ ]      | [ ]       | `Wimp_Extend 2` (Entry point jump table) |


The `Wimp_Extend 3` entry is useful for patching the WindowManager (it's
probably how the WimpSWIve module should be implemented) but I am not sure that this
form of collusion should be supported). Together with `Wimp_Extend 2` they really
do encourage overriding the system. Maybe this would be better as a vector? Or
maybe the operations should be decomposed in the Wimp and *then* dispatched through
`FilterManager`.

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_Initialise` (&400C0) |
| [ ]      | [ ]       | `Wimp_CreateWindow` (&400C1) |
| [ ]      | [ ]       | `Wimp_CreateIcon` (&400C2) |
| [ ]      | [ ]       | `Wimp_DeleteWindow` (&400C3) |
| [ ]      | [ ]       | `Wimp_DeleteIcon` (&400C4) |
| [ ]      | [ ]       | `Wimp_OpenWindow` (&400C5) |
| [ ]      | [ ]       | `Wimp_CloseWindow` (&400C6) |
| [ ]      | [ ]       | `Wimp_Poll` (&400C7) |
| [ ]      | [ ]       | `Wimp_RedrawWindow` (&400C8) |
| [ ]      | [ ]       | `Wimp_UpdateWindow` (&400C9) |
| [ ]      | [ ]       | `Wimp_GetRectangle` (&400CA) |
| [ ]      | [ ]       | `Wimp_GetWindowState` (&400CB) |
| [ ]      | [ ]       | `Wimp_GetWindowInfo` (&400CC) |
| [ ]      | [ ]       | `Wimp_SetIconState` (&400CD) |
| [ ]      | [ ]       | `Wimp_GetIconState` (&400CE) |
| [ ]      | [ ]       | `Wimp_GetPointerInfo` (&400CF) |
| [ ]      | [ ]       | `Wimp_DragBox` (&400D0) |
| [ ]      | [ ]       | `Wimp_ForceRedraw` (&400D1) |
| [ ]      | [ ]       | `Wimp_SetCaretPosition` (&400D2) |
| [ ]      | [ ]       | `Wimp_GetCaretPosition` (&400D3) |
| [ ]      | [ ]       | `Wimp_CreateMenu` (&400D4) |
| [ ]      | [ ]       | `Wimp_DecodeMenu` (&400D5) |
| [ ]      | [ ]       | `Wimp_WhichIcon` (&400D6) |
| [ ]      | [ ]       | `Wimp_SetExtent` (&400D7) |
| [ ]      | [ ]       | `Wimp_SetPointerShape` (&400D8) |
| [ ]      | [ ]       | `Wimp_OpenTemplate` (&400D9) |
| [ ]      | [ ]       | `Wimp_CloseTemplate` (&400DA) |
| [ ]      | [ ]       | `Wimp_LoadTemplate` (&400DB) |
| [ ]      | [ ]       | `Wimp_ProcessKey` (&400DC) |
| [ ]      | [ ]       | `Wimp_CloseDown` (&400DD) |
| [ ]      | [ ]       | `Wimp_StartTask` (&400DE) |
| [ ]      | [ ]       | `Wimp_ReportError` (&400DF) |
| [ ]      | [ ]       | `Wimp_GetWindowOutline` (&400E0) |
| [ ]      | [ ]       | `Wimp_PollIdle` (&400E1) |
| [ ]      | [ ]       | `Wimp_PlotIcon` (&400E2) |
| [ ]      | [ ]       | `Wimp_SetMode` (&400E3) |
| [ ]      | [ ]       | `Wimp_SetPalette` (&400E4) |
| [ ]      | [ ]       | `Wimp_ReadPalette` (&400E5) |
| [ ]      | [ ]       | `Wimp_SetColour` (&400E6) |
| [ ]      | [ ]       | `Wimp_SendMessage` (&400E7) |
| [ ]      | [ ]       | `Wimp_CreateSubMenu` (&400E8) |
| [ ]      | [ ]       | `Wimp_SpriteOp` (&400E9) |
| [ ]      | [ ]       | `Wimp_BaseOfSprites` (&400EA) |
| [ ]      | [ ]       | `Wimp_BlockCopy` (&400EB) |
| [ ]      | [ ]       | `Wimp_SlotSize` (&400EC) |
| [ ]      | [ ]       | `Wimp_ReadPixTrans` (&400ED) |
| [ ]      | [ ]       | `Wimp_ClaimFreeMemory` (&400EE) |
| [ ]      | [ ]       | `Wimp_CommandWindow` (&400EF) |
| [ ]      | [ ]       | `Wimp_TextColour` (&400F0) |
| [ ]      | [ ]       | `Wimp_TransferBlock` (&400F1) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo` (&400F2) |
| [ ]      | [ ]       | `Wimp_SetFontColours` (&400F3) |
| [ ]      | [ ]       | `Wimp_GetMenuState` (&400F4) |
| [ ]      | [ ]       | `Wimp_RegisterFilter` (&400F5) |
| [ ]      | [ ]       | `Wimp_AddMessages` (&400F6) |
| [ ]      | [ ]       | `Wimp_RemoveMessages` (&400F7) |
| [ ]      | [ ]       | `Wimp_SetColourMapping` (&400F8) |
| [ ]      | [ ]       | `Wimp_TextOp` (&400F9) |
| [ ]      | [ ]       | `Wimp_SetWatchdogState` (&400FA) |
| [ ]      | [ ]       | `Wimp_Extend` (&400FB) |
| [ ]      | [ ]       | `Wimp_ResizeIcon` (&400FC) |
| [ ]      | [ ]       | `Wimp_AutoScroll` (&400FD) |


### Services


*None*


### Vectors


*None*


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


*None*
