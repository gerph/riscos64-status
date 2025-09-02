# Module: Window

## Discovered features


* Has dynamic code
* Has nvram state
* Has services
* Has services fast
* Has swis
* Is c
* Uses graphics output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Default desktop application |
| [X]      | [ ]       | Desktop filter redraw |
| [X]      | [ ]       | Resourcefs files |
| [X]      | [ ]       | Toolbox object |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Window_Gadgets` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Window_ClassSWI` (&82880) |
| [X]      | [ ]       | `Window_PostFilter` (&82881) |
| [X]      | [ ]       | `Window_PreFilter` (&82882) |
| [X]      | [ ]       | `Window_GetPointerInfo` (&82883) |
| [X]      | [ ]       | `Window_WimpToToolbox` (&82884) |
| [X]      | [ ]       | `Window_RegisterExternal` (&82885) |
| [X]      | [ ]       | `Window_DeregisterExternal` (&82886) |
| [X]      | [ ]       | `Window_SupportExternal` (&82887) |
| [X]      | [ ]       | `Window_RegisterFilter` (&82888) |
| [X]      | [ ]       | `Window_DeregisterFilter` (&82889) |
| [X]      | [ ]       | `Window_EnumerateGadgets` (&8288A) |
| [X]      | [ ]       | `Window_GadgetGetIconList` (&8288B) |
| [X]      | [ ]       | `Window_12` (&8288C) |
| [X]      | [ ]       | `Window_13` (&8288D) |
| [X]      | [ ]       | `Window_14` (&8288E) |
| [X]      | [ ]       | `Window_15` (&8288F) |
| [X]      | [ ]       | `Window_16` (&82890) |
| [X]      | [ ]       | `Window_17` (&82891) |
| [X]      | [ ]       | `Window_18` (&82892) |
| [X]      | [ ]       | `Window_19` (&82893) |
| [X]      | [ ]       | `Window_20` (&82894) |
| [X]      | [ ]       | `Window_21` (&82895) |
| [X]      | [ ]       | `Window_22` (&82896) |
| [X]      | [ ]       | `Window_23` (&82897) |
| [X]      | [ ]       | `Window_24` (&82898) |
| [X]      | [ ]       | `Window_25` (&82899) |
| [X]      | [ ]       | `Window_26` (&8289A) |
| [X]      | [ ]       | `Window_27` (&8289B) |
| [X]      | [ ]       | `Window_28` (&8289C) |
| [X]      | [ ]       | `Window_29` (&8289D) |
| [X]      | [ ]       | `Window_30` (&8289E) |
| [X]      | [ ]       | `Window_31` (&8289F) |
| [X]      | [ ]       | `Window_32` (&828A0) |
| [X]      | [ ]       | `Window_33` (&828A1) |
| [X]      | [ ]       | `Window_34` (&828A2) |
| [X]      | [ ]       | `Window_35` (&828A3) |
| [X]      | [ ]       | `Window_36` (&828A4) |
| [X]      | [ ]       | `Window_37` (&828A5) |
| [X]      | [ ]       | `Window_38` (&828A6) |
| [X]      | [ ]       | `Window_39` (&828A7) |
| [X]      | [ ]       | `Window_40` (&828A8) |
| [X]      | [ ]       | `Window_41` (&828A9) |
| [X]      | [ ]       | `Window_42` (&828AA) |
| [X]      | [ ]       | `Window_43` (&828AB) |
| [X]      | [ ]       | `Window_44` (&828AC) |
| [X]      | [ ]       | `Window_45` (&828AD) |
| [X]      | [ ]       | `Window_46` (&828AE) |
| [X]      | [ ]       | `Window_47` (&828AF) |
| [X]      | [ ]       | `Window_48` (&828B0) |
| [X]      | [ ]       | `Window_49` (&828B1) |
| [X]      | [ ]       | `Window_50` (&828B2) |
| [X]      | [ ]       | `Window_51` (&828B3) |
| [X]      | [ ]       | `Window_52` (&828B4) |
| [X]      | [ ]       | `Window_53` (&828B5) |
| [X]      | [ ]       | `Window_54` (&828B6) |
| [X]      | [ ]       | `Window_55` (&828B7) |
| [X]      | [ ]       | `Window_56` (&828B8) |
| [X]      | [ ]       | `Window_57` (&828B9) |
| [X]      | [ ]       | `Window_58` (&828BA) |
| [X]      | [ ]       | `Window_59` (&828BB) |
| [X]      | [ ]       | `Window_60` (&828BC) |
| [X]      | [ ]       | `Window_61` (&828BD) |
| [X]      | [ ]       | `Window_ExtractGadgetInfo` (&828BE) |
| [X]      | [ ]       | `Window_PlotGadget` (&828BF) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ModeChange` |
| [X]      | [ ]       | `Service_RedrawManagerInstalled` |
| [X]      | [ ]       | `Service_ResourceFSStarting` |
| [X]      | [ ]       | `Service_ShutDownComplete` |
| [X]      | [ ]       | `Service_StartWimp` |
| [X]      | [ ]       | `Service_ToolboxStarting` |
| [X]      | [ ]       | `Service_ToolboxSubMenu` |
| [X]      | [ ]       | `Service_ToolboxTaskBorn` |
| [X]      | [ ]       | `Service_ToolboxTaskDied` |


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
| [X]      | [ ]       | `Service_ToolboxSubMenu` |
| [X]      | [ ]       | `Service_WindowModuleDying` |
| [X]      | [ ]       | `Service_WindowModuleStarting` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `DragAnObject`
* `DragASprite`
* `Font`
* `MessageTrans`
* `Redraw`
* `ResourceFS`
* `SharedCLibrary`
* `Territory`
* `Toolbox`
* `Wimp`


