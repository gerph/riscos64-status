# Phases of RISC OS 64 component development

## Summary

As described in the [Planning](Planning.md) document, the development
of RISC OS 64 components can be separated into different phases.
This document describes some of those phases, and describes the
development at a high level. Individual plans for components can be
discussed separately, but here we set out the top level structuring
of each of the phases.

The phases are not intended to deliver in a set time, or to be balanced
between one another, but to deliver useful progress over the course of
the project.

For an alternate view on the plan, see the document which focuses on
the development of each of the component [Stacks](Stacks.md).


## Phase 1: Simple modules and stubs

Phase 1 should show users and developers that the 64-bit conversion
work has started to happen. Whilst not entirely a PR exercise, it is
intended to show how the development towards 64-bit, taking in the
conversion to high level languages as a stop along the way, is both
possible and something that they may get involved in.

This should encourage developers to become involved, where they can, and
reassure users that this progression is actually happening.

As such, many of the core functions of the system can be started on,
and brought to the point of functionality. A selection of components
from within the system can be used to demonstrate techniques for
creating the higher level implementations.

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| UtilityModule             | Kernel         | Functional |
| SystemVars                | Kernel         | Internals |
| FileTypes                 | Kernel         | Functional |
| OSCommands                | Kernel         | Functional |
| FSCommands                | Kernel         | Functional |
| ModuleCommands            | Kernel         | Functional |
| Conversions               | Kernel         | Stub |
| EvaluateExpression        | Kernel         | Stub |
| CLIV                      | Core           | Functional |
| ARM                       | Core           | Stub |
| Debugger                  | Core           | Functional |
| LibraryHelp               | Core           | Functional |
| PathUtils                 | Core           | Functional |
| BootCommands              | Core           | Internals |
| TimerManager              | HW             | Internals |
| IIC                       | HW             | Stub |
| NVRAMHW                   | HW             | Prototype |
| Portable                  | HW             | Prototype |
| ReadLine                  | I/O            | Functional |
| BufferManager             | I/O            | Functional |
| SystemBell                | I/O            | Functional |
| PrinterBuffer             | I/O            | Functional |
| VideoTTX                  | Graphics       | Functional |
| VideoSW                   | Graphics       | Stub |
| VideoGuard                | Graphics       | Stub |
| OSPointer                 | Graphics       | Stub |
| Hourglass                 | Graphics       | Functional |
| ScreenBlanker             | Graphics       | Stub |
| SpriteUtils               | Graphics       | Stub |
| ResourceFS                | FS             | Internals |
| MessageTrans              | I18N           | Functional |
| RemotePrinterSupport      | Printing       | Stub |
| Wimp:Templates            | Desktop        | Internals |
| ErrorLog                  | Reporting      | Functional |
| RTC                       | Time           | Stub |

## Phase 2: Stub implemented / advancing functionality

Phase 2 will continue the process of firming up modules with stub
implementations which can be progressed later, and advancing the existing components. The goal is to ensure that the existing components get
developed, and others are started on to make them more functional.

Kernel functions can be developed which allow registration of modules
and vectors, and the SWI decoding and handling can be handled. Parts
of the Sprite system can be stubbed for the Kernel and SpriteExtend,
preparing for their extension later.

The audio system can similarly be stubbed, but it will be useful to
investigate whether the current registration system for channel voices
should be perpetuated into the 64bit world.

Desktop components can be implemented to the point of their internals
being functional - for example allowing the tracking of tasks and the
manipulation of display modes in DisplayManager.

The C network components like Freeway can be made functional, and
components like NetI and BootNet will need to be investigated as to
whether they need to be perpetuated.

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:Introspection      | Kernel         | Stub |
| Kernel:Vectors            | Kernel         | Internals |
| Kernel:Modules            | Kernel         | Internals |
| Kernel:SWIs               | Kernel         | Internals |
| Conversions               | Kernel         | Functional |
| EvaluateExpression        | Kernel         | Functional |
| OSSWIs                    | Kernel         | Stub |
| SystemVars                | Kernel         | Functional |
| BASIC                     | Core           | Functional |
| Obey                      | Core           | Functional |
| DDEUtils                  | Core           | Functional |
| OwnerBanner               | Core           | Stub |
| FileSwitch                | FS             | Stub | (split out components?)
| CDFSResources             | FS             | Stub |
| CDFS                      | FS             | Internals |
| MimeMap                   | FS             | Functional |
| BlockDevices              | FS             | Functional |
| SystemDevices             | FS             | Internals |
| Joystick                  | I/O            | Prototype |
| Messages                  | I18N           | Stub |
| RemotePrinterMessages     | Printing       | Stub |
| AUNMsgs                   | Network        | Stub |
| TerritoryManager          | L12N           | Stub |
| UK                        | L12N           | Prototype |
| International             | L12N           | Stub |
| ROMFonts                  | Graphics       | Stub |
| GameModes                 | Graphics       | Functional |
| ScreenModes               | Graphics       | Investigate |
| ColourTrans               | Graphics       | Stub |
| Draw                      | Graphics       | Stub |
| DrawFile                  | Graphics       | Stub |
| VideoSW                   | Graphics       | Functional |
| Kernel:Mode               | Graphics       | Stub |
| Kernel:Sprites            | Graphics       | Stub |
| SpriteExtend:Scaling      | Graphics       | Stub |
| SpriteExtend:Transforms   | Graphics       | Stub |
| SpriteExtend:JPEG         | Graphics       | Stub |
| FontManager               | Graphics       | Stub |
| SoundDMA                  | Audio          | Stub |
| SoundChannels             | Audio          | Internals |
| WaveSynth                 | Audio          | Investigate |
| StringLib                 | Audio          | Investigate |
| Percussion                | Audio          | Investigate |
| SoundScheduler            | Audio          | Stub |
| SharedSound               | Audio          | Stub |
| Wimp:SWIs                 | Desktop        | Stub |
| Wimp:TextRender           | Desktop        | Stub |
| Wimp:Introspection        | Desktop        | Stub |
| TaskManager               | Desktop        | Internals |
| DisplayManager            | Desktop        | Internals |
| DragASprite               | Desktop        | Internals |
| Free                      | Desktop        | Stub |
| Desktop                   | Desktop        | Internals |
| Econet                    | Network        | Stub |
| NetI                      | Network        | Investigate |
| NetStatus                 | Network        | Functional |
| Freeway                   | Network        | Functional |
| FreewayHosts              | Network        | Functional |
| BootNet                   | Network        | Investigate |


## Phase 3: Stack wiring / advancing functionality

Phase 3 is intended to start wiring up larges of the system to make
it ready for higher level components. In particular, bringing up the
filesystem stack and making the graphics system functional.

To allow more foundations for the following phase, the WindowManager
and some desktop components are fleshed out so that they can be
integrated with other parts of the system. Many of the internals for
the WindowManager are isolated and can be built up without worrying
about other parts of the system. By preparing these they will be able
to be integrated into functional components in the next phase.

The filesystem should be able to be made functional for some of the
base file systems like ResourceFS and the SystemDevices (assuming we
actually wish to retain these). With BlockDevices having been added
in phase 2, DOSFS should be able to be made functional.

The graphics system can be brought up beyond having simple colours
with ColourTrans, and the FontManager implemented in some form.

With the sound system having been stubbed in the last phase, it should
be possible to expand this into functional implementations for
SoundChannels and the SoundScheduler, with the SoundDMA internals
being set up so that a hardware implementation can be added later.

The keyboard input system used within InternationalKeyboard needs
a bit of thought, so stubbing it here would help set that up, and
the KeyInput module will be trivial to provide as it is already
in C.


| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:OSByte             | Kernel         | Functional |
| Kernel:OSWord             | Kernel         | Functional |
| Kernel:DAs                | Kernel         | Internals |
| Kernel:Modules            | Kernel         | Functional |
| Kernel:Vectors            | Kernel         | Functional |
| Kernel:Heap               | Kernel         | Functional |
| Kernel:VDU                | Kernel         | Stub |
| OSSWIs                    | Kernel         | Functional |
| TimerManager              | HW             | Functional |
| BootCommands              | Core           | Functional |
| Squash                    | Core           | Functional |
| InternationalKeyboard     | I/O            | Stub |
| KeyInput                  | I/O            | Functional |
| International             | L12N           | Internals |
| FSLock                    | FS             | Functional |
| FileCore                  | FS             | Investigate |
| RamFS                     | FS             | Functional |
| CDFS                      | FS             | Functional |
| PipeFS                    | FS             | Internals |
| DeviceFS                  | FS             | Internals |
| ResourceFS                | FS             | Functional |
| AIF                       | FS             | Functional |
| TransientUtility          | FS             | Functional |
| DOSFS                     | FS             | Functional |
| NetFS                     | FS             | Internals |
| CDFSdriver                | FS             | Stub |
| SystemDevices             | FS             | Functional |
| SpriteExtend:Scaling      | Graphics       | Functional |
| ColourTrans               | Graphics       | Internals |
| FontManager               | Graphics       | Functional |
| Draw                      | Graphics       | Functional |
| DrawFile                  | Graphics       | Functional |
| ScreenBlanker             | Graphics       | Functional |
| Messages                  | I18N           | Functional |
| AUNMsgs                   | Network        | Functional |
| SoundChannels             | Audio          | Functional |
| SoundDMA                  | Audio          | Internals |
| SoundScheduler            | Audio          | Functional |
| Free                      | Desktop        | Internals |
| Filer                     | Desktop        | Internals |
| FilerSWIs                 | Desktop        | Functional |
| Wimp:IconRender           | Desktop        | Internals |
| Wimp:SpriteRender         | Desktop        | Internals |
| Wimp:SpritePools          | Desktop        | Internals |
| Wimp:Fonts                | Desktop        | Internals |
| Wimp:WindowRender         | Desktop        | Internals |
| Wimp:TaskManagement       | Desktop        | Internals |
| Wimp:TextRender           | Desktop        | Functional |
| Wimp:Tiling               | Desktop        | Internals |
| Wimp:Memory               | Desktop        | Internals |
| RTC                       | Time           | Functional |


## Phase 4: Desktop / Networking / advancing functionality

Phase 4 is a large phase, bringing together a log of components.
By the time we reach phase 4, a lot of the fundamentals should
already be present, and hopefully there will be more people
able to work on things. Whilst pulling together the Kernel and
the Wimp will be jobs for individuals, many of the other
components can be improved independantly.

The graphics system should become largely complete by the end
of this phase, allowing the other components to use its functions.
This will allow the Wimp to be pulled together and developed in
a more functional manner.

Tasks should be able to be implemented, or ported to the 64bit
environment at this point - although a lot of the functionality
may still be sketchy.

Having been recently updated, the Internet stack should be easy
to update, although the drivers may have to come later. Components
like the Econet module may be prototyped in advance of a hardware
implementation (if any should even be produced).


| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:SystemInit         | Kernel         | Functional |
| Kernel:MemManagement      | Kernel         | Functional |
| Kernel:DAs                | Kernel         | Functional |
| Kernel:VDU                | Kernel         | Functional |
| Kernel:Graphics           | Kernel         | Functional |
| Kernel:Sprites            | Kernel         | Functional |
| Kernel:Exceptions         | Kernel         | Functional |
| Kernel:ProgEnv            | Kernel         | Functional |
| Kernel:Time               | Kernel         | Functional |
| Kernel:Input              | Kernel         | Functional |
| OwnerBanner               | Core           | Functional |
| ShareFS                   | FS             | Functional |
| LanManFS                  | FS             | Functional |
| NetFS                     | FS             | Functional |
| PipeFS                    | FS             | Functional |
| Kernel:Mode               | Graphics       | Functional |
| ColourTrans               | Graphics       | Functional |
| SpriteUtils               | Graphics       | Functional |
| ROMFonts                  | Graphics       | Functional |
| InternationalKeyboard     | I/O            | Functional |
| International             | L12N           | Functional |
| TerritoryManager          | L12N           | Functional |
| UK                        | L12N           | Functional |
| SharedSound               | Audio          | Functional |
| Wimp:Templates            | Desktop        | Functional |
| Wimp:WindowManagement     | Desktop        | Functional |
| Wimp:WindowRender         | Desktop        | Functional |
| Wimp:WindowStacking       | Desktop        | Functional |
| Wimp:Polling              | Desktop        | Functional |
| Wimp:Interaction          | Desktop        | Functional |
| Wimp:IconRender           | Desktop        | Functional |
| Wimp:Memory               | Desktop        | Functional |
| Wimp:ErrorBox             | Desktop        | Functional |
| Wimp:Pointer              | Desktop        | Functional |
| Wimp:Tiling               | Desktop        | Functional |
| Wimp:CommandWindow        | Desktop        | Functional |
| Wimp:Introspection        | Desktop        | Functional |
| Wimp:Startup              | Desktop        | Functional |
| Wimp:SWIs                 | Desktop        | Functional |
| Wimp:Fonts                | Desktop        | Functional |
| Wimp:Menus                | Desktop        | Functional |
| Wimp:Messages             | Desktop        | Functional |
| Wimp:SpriteRender         | Desktop        | Functional |
| Wimp:TaskManagement       | Desktop        | Functional |
| Wimp:SpritePools          | Desktop        | Functional |
| FilterManager             | Desktop        | Functional |
| Desktop                   | Desktop        | Functional |
| OmniDisc                  | Desktop        | Functional |
| TaskManager               | Desktop        | Functional |
| ShellCLI                  | Desktop        | Functional |
| DragAnObject              | Desktop        | Stub |
| Pinboard                  | Desktop        | Investigate |
| Econet                    | Network        | Prototype |
| MbufManager               | Network        | Investigate |
| Internet                  | Network        | Functional |
| InetServices              | Network        | Functional |
| Resolver                  | Network        | Functional |
| RemotePrinterMessages     | Network        | Functional |
| RemotePrinterSupport      | Network        | Functional |
| SysLog                    | Reporting      | Complete |


## Phase 5: Hardware wiring / Printer / advancing functionality

Phase 5 brings in the hardware drivers for different parts of the
system, to ensure that we have the capability to run on real systems.
It's possible that these drivers might actually get developed
in advance of this phase, but full functionality might not get tied
down until this point.

Together with the hardware implementations, the graphics system can
be finished off, bringing in components which are in C but had not
yet been made to work, or creating simple implementations of assembler
modules.

The printing sysetm is a large part of this phase, though a lot of
the work should be investigation to decide how to progress. It would
help greatly if the share implementations used by the dumper modules
were made more common, and the drivers refactored to make it easiser
to add new systems. It's likely that this can be improved through a
pipeline process, with bitmap and vector drivers separating and dumpers
being given a separate system. However, this is open to more design
work.

Finalising the high level network stack components can be done here,
as well as bringing in the compatibility layers for some of the old
BBC interfaces. It is likely that new modules will be required to
handle the legacy interfaces that are being replaced due to the
RISC OS 64 design and implementations.

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:IRQs               | Kernel         | Functional |
| Kernel:Timers             | Kernel         | Functional |
| IRQ                       | HW             | Functional |
| Podule                    | HW             | Investigate |
| DMAManager                | HW             | Functional |
| IIC                       | HW             | Functional |
| RTCHW                     | HW             | Functional |
| NVRAMHW                   | HW             | Functional |
| Portable                  | HW             | Functional |
| SerialDeviceDriver        | HW             | Functional |
| ParallelDeviceDriver      | HW             | Functional |
| Mouse                     | HW             | Investigate |
| SerialMouse               | HW             | Investigate |
| PS2Driver                 | HW             | Investigate |
| SoundDMA                  | HW             | Functional |
| CDFSSoftATAPI             | HW             | Investigate |
| CDFSSoftChinonEESOX       | HW             | Investigate |
| CDFSSoftHitachiEESOX      | HW             | Investigate |
| CDFSSoftPhilipsEESOX      | HW             | Investigate |
| CDFSSoftSonyEESOX         | HW             | Investigate |
| CDFSSoftToshibaEESOX      | HW             | Investigate |
| CDFSSoftSCSI              | HW             | Investigate |
| ARM                       | Core           | Functional |
| Joystick                  | I/O            | Functional |
| SerialDeviceSupport       | FS             | Functional |
| ColourMap                 | Graphics       | Functional |
| FontMap                   | Graphics       | Functional |
| BlendTable                | Graphics       | Functional |
| InverseTable              | Graphics       | Functional |
| VideoGuard                | Graphics       | Functional |
| OSPointer                 | Graphics       | Functional |
| SpriteExtend:Transforms   | Graphics       | Functional |
| Free                      | Desktop        | Functional |
| DisplayManager            | Desktop        | Functional |
| ColourPicker              | Desktop        | Functional |
| Filer                     | Desktop        | Functional |
| FilerSWIs                 | Desktop        | Functional |
| Filer_Action              | Desktop        | Functional |
| WindowScroll              | Desktop        | Functional |
| ClipboardHolder           | Desktop        | Functional |
| Wimp:IconBorders          | Desktop        | Functional |
| PDriver                   | Printing       | Functional |
| PDriverDP                 | Printing       | Investigate |
| PDumper24                 | Printing       | Investigate |
| PDumperCX                 | Printing       | Investigate |
| PDumperDM                 | Printing       | Investigate |
| PDumperE2                 | Printing       | Investigate |
| PDumperIW                 | Printing       | Investigate |
| PDumperLJ                 | Printing       | Investigate |
| PDriverPS                 | Printing       | Investigate |
| PDumperSupport            | Printing       | Investigate |
| MakePSFont                | Printing       | Functional |
| NetPrint                  | Printing       | Functional |
| InetConfigure             | Network        | Functional |
| DHCPClient                | Network        | Functional |
| ZeroConf                  | Network        | Functional |
| RouterDiscovery           | Network        | Functional |
| LegacyBBC                 | Compatibility  | Functional |
| LegacyScreen              | Compatibility  | Functional |
| BBCEconet                 | Compatibility  | Functional |
| RTCAdjust                 | Time           | Investigate |
| InternetTime              | Time           | Functional |


## Phase 6: Applications / advancing functionality

Phase 6 focuses on the aplication support, bringing in the
desktop and graphics components that allow some of the applications
to work better. Additionally, the Toolbox stack can be updated to
work within the new environment. This should be largely mechanical,
as most of the Toolbox comprises C components.

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| ZLib                      | Core           | Functional |
| Zipper                    | Core           | Functional |
| PNG                       | Graphics       | Functional |
| ImageFileConvert          | Graphics       | Functional |
| CompressJPEG              | Graphics       | Functional |
| ConvertPNG                | Graphics       | Functional |
| ConvertBMP                | Graphics       | Functional |
| ConvertGIF                | Graphics       | Functional |
| ConvertICO                | Graphics       | Functional |
| ConvertPNM                | Graphics       | Functional |
| ConvertSprite             | Graphics       | Functional |
| ConvertSun                | Graphics       | Functional |
| ConvertXBM                | Graphics       | Functional |
| ConvertPCX                | Graphics       | Functional |
| ConvertClear              | Graphics       | Functional |
| ImageFileRender           | Graphics       | Functional |
| SpriteExtend:JPEG         | Graphics       | Functional |
| DragASprite               | Desktop        | Functional |
| DragAnObject              | Desktop        | Functional |
| ScrSaver                  | Desktop        | Functional |
| RedrawManager             | Desktop        | Functional |
| IconBorderPlain           | Desktop        | Functional |
| IconBorderRound           | Desktop        | Functional |
| Toolbox                   | Toolbox        | Functional |
| Window                    | Toolbox        | Functional |
| Menu                      | Toolbox        | Functional |
| Iconbar                   | Toolbox        | Functional |
| ColourDbox                | Toolbox        | Functional |
| ColourMenu                | Toolbox        | Functional |
| DCS                       | Toolbox        | Functional |
| FileInfo                  | Toolbox        | Functional |
| FontDbox                  | Toolbox        | Functional |
| FontMenu                  | Toolbox        | Functional |
| PrintDbox                 | Toolbox        | Functional |
| ProgInfo                  | Toolbox        | Functional |
| SaveAs                    | Toolbox        | Functional |
| Scale                     | Toolbox        | Functional |
| GDivider                  | Toolbox        | Functional |
| ToolAction                | Toolbox        | Functional |
| TextGadgets               | Toolbox        | Functional |
| ImageFileGadget           | Toolbox        | Functional |


## Phase 7: Compatibility and future proofing

In terms of future-proofing, there isn't a lot to include. However,
I have set aside phase 7 to move components into if they're not needed
at lower levels, and to introduce new modules needed by the system.

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| AppPatcher                | Compatibility  | Functional |


## Late stage development / not needed

Not a phase, but there are certain components which are present in the
usual OS, which may not be needed or which need much greater organisation
within the RISC OS 64 system.

| Name                      | Comments |
|---------------------------|---------------|
| FPEmulator                | FP emulation not required |
| SharedCLibrary            | Shared C library not required |
| UnSqueezeAIF              | Compressed modules not required |
| ADFS                      | Replace with block device drivers |
| ResourceFiler             | Replace with OmniFiler |
| ADFSFiler                 | Replace with OmniFiler |
| RAMFSFiler                | Replace with OmniFiler |
| CDFSFiler                 | Replace with OmniFiler |
| NetFiler                  | Replace with OmniFiler |
| BASIC64                   | Replaced by configurable BASIC module |
| BASICTrans                | Not required |
| SuperSample               | May not be required if FontManager does that job |
| TaskWindow                | Complex; application model changes would help |


### Definitely not required

These are a number of modules that are not required for the RISC OS 64
system.

| Name                      | Reason |
|---------------------------|---------------|
| CFrontDemangler           | CFront not supplied |
| VideoHWVIDC               | VIDC not required for modern devices |
| VideoHWVF                 | VF not required for modern devices |
| WindowUtils               | Patches no longer necessary |
| CallASWI                  | Built in to modern systems |
| IRQUtils                  | Patches no longer necessary (although the invaders game might be interesting) |
| ImageFileRender_Artworks  | Not required without AWRender |
| !Alarm module             | Not required; move to application |
