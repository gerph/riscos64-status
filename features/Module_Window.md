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


* Default desktop application
* Desktop filter redraw
* Resourcefs files
* Toolbox object

### Commands


* `*Window_Gadgets`


### SWIs


* `Window_ClassSWI` (&82880)
* `Window_PostFilter` (&82881)
* `Window_PreFilter` (&82882)
* `Window_GetPointerInfo` (&82883)
* `Window_WimpToToolbox` (&82884)
* `Window_RegisterExternal` (&82885)
* `Window_DeregisterExternal` (&82886)
* `Window_SupportExternal` (&82887)
* `Window_RegisterFilter` (&82888)
* `Window_DeregisterFilter` (&82889)
* `Window_EnumerateGadgets` (&8288A)
* `Window_GadgetGetIconList` (&8288B)
* `Window_12` (&8288C)
* `Window_13` (&8288D)
* `Window_14` (&8288E)
* `Window_15` (&8288F)
* `Window_16` (&82890)
* `Window_17` (&82891)
* `Window_18` (&82892)
* `Window_19` (&82893)
* `Window_20` (&82894)
* `Window_21` (&82895)
* `Window_22` (&82896)
* `Window_23` (&82897)
* `Window_24` (&82898)
* `Window_25` (&82899)
* `Window_26` (&8289A)
* `Window_27` (&8289B)
* `Window_28` (&8289C)
* `Window_29` (&8289D)
* `Window_30` (&8289E)
* `Window_31` (&8289F)
* `Window_32` (&828A0)
* `Window_33` (&828A1)
* `Window_34` (&828A2)
* `Window_35` (&828A3)
* `Window_36` (&828A4)
* `Window_37` (&828A5)
* `Window_38` (&828A6)
* `Window_39` (&828A7)
* `Window_40` (&828A8)
* `Window_41` (&828A9)
* `Window_42` (&828AA)
* `Window_43` (&828AB)
* `Window_44` (&828AC)
* `Window_45` (&828AD)
* `Window_46` (&828AE)
* `Window_47` (&828AF)
* `Window_48` (&828B0)
* `Window_49` (&828B1)
* `Window_50` (&828B2)
* `Window_51` (&828B3)
* `Window_52` (&828B4)
* `Window_53` (&828B5)
* `Window_54` (&828B6)
* `Window_55` (&828B7)
* `Window_56` (&828B8)
* `Window_57` (&828B9)
* `Window_58` (&828BA)
* `Window_59` (&828BB)
* `Window_60` (&828BC)
* `Window_61` (&828BD)
* `Window_ExtractGadgetInfo` (&828BE)
* `Window_PlotGadget` (&828BF)


### Services


* `Service_ModeChange`
* `Service_RedrawManagerInstalled`
* `Service_ResourceFSStarting`
* `Service_ShutDownComplete`
* `Service_StartWimp`
* `Service_ToolboxStarting`
* `Service_ToolboxSubMenu`
* `Service_ToolboxTaskBorn`
* `Service_ToolboxTaskDied`


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
* `Service_ToolboxSubMenu`
* `Service_WindowModuleDying`
* `Service_WindowModuleStarting`


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


