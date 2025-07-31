# Phased development of RISC OS components

## Summary

This document describes some of the phases of development that might take place
to develop components for a 64-bit version of RISC OS. Primarily this focuses on
the modules necessary to build the 'ROM' - however it is not anticipated that
the distribution mechanism would be specifically a ROM image, as this makes less
sense within a modern environment.

The phases are intended to be general sections of deliverable milestones which
show continued development and which are realistic in developing the system
towards an environment that can be worked on by more people. Components within
the stacks may depend on other components, but it may not be necessary to develop
the earlier components if an existing RISC OS Classic implementation can be used
for testing, or RISC OS Pyromaniac already provides the necessary functionality
to work against.

Although the early stages will be small in scope, the amount of work necessary
the further through the process we move, the more unreliable the planning will be.
Many components may need to be split up to ensure that they can be worked on
in stages - the Kernel and the WindowManager are examples of this.

Some lesser important modules are placed further down the phases, as they are not
necessary to develop anything important.

## Functionality key, in mostly increasing functionality:

* `Investigate` - decide how to proceed
* `Stub` - just the interface to the OS; no implementation.
* `Prototype` - largely functional, but hardware implementation missing.
* `Built` - component has been built into a binary, but it's not understooed whether it is working, or even useful.
* `Internals` - internal implementation, but no OS wiring.
* `Functional` - wired from OS interface to internals, but may be missing less used features, including I18N.
* `Complete` - implemented completely.
* `Tested` - implemented and tested manually.
* `Automated` - testing has been automated.

Although the functionality key covers `Complete`, `Tested`, and `Automated`, these stages are not part of the current phasing. These states are expected to be developed on an as-needed basis, as 'Complete' would require a complete agreement on what was the complete functionality required, which it will be difficult to do.

## Phase 1: (Simple modules and stubs)

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| UtilityModule             | Kernel         | Functional |
| TimerManager              | HW             | Internals |
| IIC                       | HW             | Stub |
| NVRAMHW                   | HW             | Prototype |
| SystemVars                | Kernel         | Internals |
| FileTypes                 | Kernel         | Functional |
| ReadLine                  | I/O            | Functional |
| CLIV                      | Core           | Functional |
| VideoTTX                  | Graphics       | Functional |
| VideoSW                   | Graphics       | Stub |
| VideoGuard                | Graphics       | Stub |
| OSCommands                | Kernel         | Functional |
| FSCommands                | Kernel         | Functional |
| ModuleCommands            | Kernel         | Functional |
| ARM                       | Core           | Stub |
| BufferManager             | I/O            | Functional |
| Debugger                  | Core           | Functional |
| RTC                       | Time           | Stub |
| OSPointer                 | Graphics       | Stub |
| Hourglass                 | Graphics       | Functional |
| Portable                  | HW             | Prototype |
| ResourceFS                | FS             | Internals |
| MessageTrans              | I18N           | Functional |
| PathUtils                 | Core           | Functional |
| BootCommands              | Core           | Internals |
| ScreenBlanker             | Graphics       | Stub |
| SystemBell                | I/O            | Functional |
| PrinterBuffer             | I/O            | Functional |
| RemotePrinterSupport      | Printing       | Stub |
| LibraryHelp               | Core           | Functional |
| ErrorLog                  | Reporting      | Functional |
| Wimp:Templates            | Desktop        | Internals |

## Phase 2: Stub implemented / advancing functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Conversions               | Kernel         | Stub |
| OSSWIs                    | Kernel         | Stub |
| EvaluateExpression        | Kernel         | Stub |
| FileSwitch                | FS             | Stub | (split out components?)
| Messages                  | I18N           | Stub |
| RemotePrinterMessages     | Printing       | Stub |
| ROMFonts                  | Graphics       | Stub |
| CDFSResources             | FS             | Stub |
| AUNMsgs                   | Network        | Stub |
| TerritoryManager          | L12N           | Stub |
| UK                        | L12N           | Prototype |
| International             | L12N           | Stub |
| CDFS                      | FS             | Internals |
| BASIC                     | Core           | Functional |
| Obey                      | Core           | Functional |
| DDEUtils                  | Core           | Functional |
| GameModes                 | Graphics       | Functional |
| ScreenModes               | Graphics       | Investigate |
| SoundDMA                  | Audio          | Stub |
| SoundChannels             | Audio          | Internals |
| WaveSynth                 | Audio          | Investigate |
| StringLib                 | Audio          | Investigate |
| Percussion                | Audio          | Investigate |
| SoundScheduler            | Audio          | Stub |
| SharedSound               | Audio          | Stub |
| ColourTrans               | Graphics       | Stub |
| Draw                      | Graphics       | Stub |
| SpriteExtend              | Graphics       | Stub |
| DrawFile                  | Graphics       | Stub |
| FontManager               | Graphics       | Stub |
| Wimp:SWIs                 | Desktop        | Stub |
| Wimp:Templates            | Desktop        | Internals |
| TaskManager               | Desktop        | Internals |
| DisplayManager            | Desktop        | Internals |
| DragASprite               | Desktop        | Internals |
| Free                      | Desktop        | Stub |
| Econet                    | Network        | Stub |
| NetI                      | Network        | Investigate |
| NetStatus                 | Network        | Functional |
| MimeMap                   | FS             | Functional |
| Freeway                   | Network        | Functional |
| FreewayHosts              | Network        | Functional |
| BootNet                   | Network        | Investigate |
| Joystick                  | I/O            | Stub |
| Kernel:Introspection      | Kernel         | Stub |
| Kernel:Vectors            | Kernel         | Internals|
| Kernel:Modules            | Kernel         | Functional |
| Kernel:SWIs               | Kernel         | Functional |
| Desktop                   | Desktop        | Internals |


## Phase 3: Stack wiring / advancing functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Squash                    | Core           | Functional |
| FSLock                    | FS             | Functional |
| InternationalKeyboard     | I/O            | Stub |
| KeyInput                  | I/O            | Functional |
| BlockDevices              | FS             | Functional |
| FileCore                  | FS             | Investigate |
| RamFS                     | FS             | Functional |
| CDFS                      | FS             | Functional |
| SystemDevices             | FS             | Internals |
| PipeFS                    | FS             | Internals |
| DeviceFS                  | FS             | Internals |
| AIF                       | FS             | Functional |
| TransientUtility          | FS             | Functional |
| DOSFS                     | FS             | Functional |
| SoundDMA                  | FS             | Functional |
| FontManager               | Graphics       | Functional |
| Free                      | Desktop        | Internals |
| NetFS                     | FS             | Internals |
| CDFSdriver                | FS             | Stub |
| Filer                     | Desktop        | Internals |
| FilerSWIs                 | Desktop        | Functional |
| Kernel:OSByte             | Kernel         | Functional |
| Kernel:OSWord             | Kernel         | Functional |
| Kernel:DAs                | Kernel         | Internals |
| Kernel:Modules            | Kernel         | Internals |
| Kernel:Heap               | Kernel         | Functional |
| Wimp:IconRender           | Desktop        | Internals |
| Wimp:SpritePools          | Desktop        | Internals |
| Wimp:Fonts                | Desktop        | Internals |


## Phase 4: Desktop / Networking / advancing functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Wimp:Templates            | Desktop        | Functional |
| Wimp:WindowManagement     | Desktop        | Functional |
| Wimp:WindowRender         | Desktop        | Functional |
| Wimp:WindowStacking       | Desktop        | Functional |
| Wimp:Polling              | Desktop        | Functional |
| Wimp:Interaction          | Desktop        | Functional |
| Wimp:Memory               | Desktop        | Functional |
| Wimp:ErrorBox             | Desktop        | Functional |
| Wimp:Pointer              | Desktop        | Functional |
| Wimp:TextRender           | Desktop        | Functional |
| Wimp:Tiling               | Desktop        | Functional |
| Wimp:CommandWindow        | Desktop        | Functional |
| Wimp:Introspection        | Desktop        | Functional |
| Wimp:Startup              | Desktop        | Functional |
| Wimp:SWIs                 | Desktop        | Functional |
| Wimp:Fonts                | Desktop        | Functional |
| Wimp:Menus                | Desktop        | Functional |
| Wimp:Messages             | Desktop        | Functional |
| FilterManager             | Desktop        | Functional |
| Desktop                   | Desktop        | Functional |
| (generic filer)           | Desktop        | Functional | (OmniFiler?)
| SysLog                    | Reporting      | Complete |
| TaskManager               | Desktop        | Functional |
| ShellCLI                  | Desktop        | Functional |
| DisplayManager            | Desktop        | Functional |
| DragAnObject              | Desktop        | Stub |
| Filer                     | Desktop        | Functional |
| FilerSWIs                 | Desktop        | Functional |
| Filer_Action              | Desktop        | Functional |
| Pinboard                  | Desktop        | Investigate |
| ClipboardHolder           | Desktop        | Functional |
| WindowScroll              | Desktop        | Functional |
| ColourPicker              | Desktop        | Functional |
| MbufManager               | Network        | Investigate |
| Internet                  | Network        | Functional |
| InetServices              | Network        | Functional |
| Resolver                  | Network        | Functional |
| InternetTime              | Network        | Functional |
| ShareFS                   | FS             | Functional |
| LanManFS                  | FS             | Functional |
| SpriteUtils               | Graphics       | Functional |
| OwnerBanner               | Core           | Functional |

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


## Phase 5: Hardware wiring / Printer / advancing functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:IRQs               | Kernel         | Functional |
| Kernel:Timers             | Kernel         | Functional |
| IRQ                       | HW             | Functional |
| Podule                    | HW             | Investigate |
| DMAManager                | HW             | Functional |
| RTCAdjust                 | HW             | Investigate |
| RTCHW                     | HW             | Functional |
| SerialDeviceDriver        | HW             | Functional |
| SerialDeviceSupport       | FS             | Functional |
| ParallelDeviceDriver      | HW             | Functional |
| Mouse                     | HW             | Investigate |
| SerialMouse               | HW             | Investigate |
| PS2Driver                 | HW             | Investigate |
| SoundDMA                  | HW             | Functional |
| ColourMap                 | Graphics       | Functional |
| FontMap                   | Graphics       | Functional |
| BlendTable                | Graphics       | Functional |
| InverseTable              | Graphics       | Functional |
| PDriver                   | Printing       | Functional |
| PDriverDP                 | Printing       | Investigate |
| PDumper24                 | Printing       | Investigate |
| PDumperCX                 | Printing       | Investigate |
| PDumperDM                 | Printing       | Investigate |
| PDumperE2                 | Printing       | Investigate |
| PDumperIW                 | Printing       | Investigate |
| PDumperLJ                 | Printing       | Investigate |
| PDriverPS                 | Printing       | Investigate |
| PDumperSupport            | Printing       | Stub |
| MakePSFont                | Printing       | Functional |
| NetPrint                  | Printing       | Functional |
| InetConfigure             | Networking     | Functional |
| DHCPClient                | Networking     | Functional |
| ZeroConf                  | Networking     | Functional |
| RouterDiscovery           | Networking     | Functional |
| CDFSSoftATAPI             | HW             | Investigate |
| CDFSSoftChinonEESOX       | HW             | Investigate |
| CDFSSoftHitachiEESOX      | HW             | Investigate |
| CDFSSoftPhilipsEESOX      | HW             | Investigate |
| CDFSSoftSonyEESOX         | HW             | Investigate |
| CDFSSoftToshibaEESOX      | HW             | Investigate |
| CDFSSoftSCSI              | HW             | Investigate |
| LegacyBBC                 | Compatibility  | Functional |
| LegacyScreen              | Compatibility  | Functional |
| BBCEconet                 | Compatibility  | Functional |


## Phase 6: Applications / advancing functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| ScrSaver                  | Desktop        | Functional |
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
| RedrawManager             | Desktop        | Functional |
| IconBorderPlain           | Desktop        | Functional |
| IconBorderRound           | Desktop        | Functional |
| Toolbox                   | Desktop        | Functional |
| Window                    | Desktop        | Functional |
| Menu                      | Desktop        | Functional |
| Iconbar                   | Desktop        | Functional |
| ColourDbox                | Desktop        | Functional |
| ColourMenu                | Desktop        | Functional |
| DCS                       | Desktop        | Functional |
| FileInfo                  | Desktop        | Functional |
| FontDbox                  | Desktop        | Functional |
| FontMenu                  | Desktop        | Functional |
| PrintDbox                 | Desktop        | Functional |
| ProgInfo                  | Desktop        | Functional |
| SaveAs                    | Desktop        | Functional |
| Scale                     | Desktop        | Functional |
| GDivider                  | Desktop        | Functional |
| ToolAction                | Desktop        | Functional |
| TextGadgets               | Desktop        | Functional |
| ImageFileGadget           | Desktop        | Functional |


## Phase 7: Future proofing

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| AppPatcher                | Compatibility  | Functional |


## Phase 8: Late stage development / not needed

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


## Definitely not required:

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


