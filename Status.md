# Current status of RISC OS 64 development

## Summary

The tables within this document indicate the status of each component.

* `Lang` indicates the RISC OS Classic implementation
* `Filetype` indicates the filetype (for disc based components)
* `C-State` indicates whether there is a port to C (for Asm components), or `-` if the source is already in C.
* `64-state` indicates whether the port Functional in 64-bit.

There are footnotes beside the component state notes which indicate how far the development has progressed, limitations, or changes in the implementation of the component.

For a phase-focused view of the status, see the [Progress page](Progress).

## Terminology

Details of the terminology can be found in the [Terminology document](Terminology).

## RISC OS components

### ROM modules

| Name                      | Lang  | C-state       | 64-state      |
|---------------------------|-------|---------------|---------------|
| UtilityModule             | Asm   |               |               |
| IRQ                       | Asm   |               |               |
| TimerManager              | Asm   |               |               |
| Podule                    | Asm   |               |               |
| IIC                       | Asm   |               |               |
| NVRAMHW                   | Asm   |               |               |
| Conversions               | Asm   | Complete      | Complete      |
| OSSWIs                    | Asm   |               |               |
| EvaluateExpression        | Asm   |               |               |
| SystemVars                | Asm   |               |               |
| FileTypes                 | Asm   | Complete      | Complete      |
| FPEmulator                | Asm   |               |               |
| SharedCLibrary            | C     | -             |               |
| UnSqueezeAIF              | Asm   |               |               |
| AppPatcher                | Asm   |               |               |
| DiagnosticDump            | C     | -             |               |
| CFrontDemangler           | C     | -             |               |
| ReadLine                  | Asm   | Functional    | Internals[^1] |
| CLIV                      | Asm   |               |           |
| VideoTTX                  | C     | -             |           |
| VideoSW                   | Asm   |               |           |
| VideoHWVIDC               | Asm   |               |           |
| VideoHWVF                 | Asm   |               |           |
| VideoGuard                | Asm   |               |           |
| OSCommands                | Asm   | Stub          | Stub      |
| FSCommands                | Asm   |               |           |
| ModuleCommands            | Asm   | Functional[^cmungehelp] | Functional[^cmungehelp] |
| ARM                       | Asm   | Stub          | Stub[^arm] |
| BufferManager             | Asm   | Stub          | Stub[^buffermanager] |
| Debugger                  | Asm   | Functional[^debugger] | Functional[^debugger] |
| RTC                       | Asm   | Functional    | Internals[^1]   |
| DMAManager                | Asm   |           |           |
| RTCAdjust                 | Asm   |           |           |
| RTCHW                     | Asm   |           |           |
| OSPointer                 | Asm   |           |           |
| Hourglass                 | Asm   | Prototype[^hourglass] |           |
| Portable                  | Asm   | Prototype | Prototype |
| FileSwitch                | Asm   |           |           |
| Squash                    | Asm/C |           |           |
| ResourceFS                | Asm   | Stub      | Stub      |
| ResourceFiler             | Asm   |           |           |
| Messages                  | Asm   |           |           |
| MessageTrans              | Asm   | Functional[^messagetrans] | Functional[^messagetrans] |
| FSLock                    | Asm   |           |           |
| TerritoryManager          | Asm   |           |           |
| UK                        | Asm   |           |           |
| International             | Asm   |           |           |
| SerialDeviceDriver        | Asm   |           |           |
| SerialDeviceSupport       | Asm   |           |           |
| Mouse                     | Asm   |           |           |
| SerialMouse               | Asm   |           |           |
| PS2Driver                 | Asm   |           |           |
| InternationalKeyboard     | Asm   |           |           |
| KeyInput                  | C     | -         | Built     |
| FileCore                  | Asm   |           |           |
| ADFS                      | Asm   |           |           |
| ADFSFiler                 | Asm   |           |           |
| RamFS                     | Asm   |           |           |
| RAMFSFiler                | Asm   |           |           |
| CDFS                      | Asm   |           |           |
| CDFSFiler                 | C     | -         |           |
| DOSFS                     | C     | -         |           |
| SystemDevices             | Asm   |           |           |
| PipeFS                    | Asm   |           |           |
| AIF                       | Asm   |           |           |
| TransientUtility          | Asm   |           |           |
| BASIC                     | Asm   | Stub[^srevill] |           |
| BASIC64                   | Asm   |           |           |
| BASICTrans                | Asm   |           |           |
| Obey                      | Asm   | Complete[^jstamp]      |           |
| DDEUtils                  | Asm   |           |           |
| PathUtils                 | C     | -         | Functional |
| SysLog                    | C     | -         |           |
| BootCommands              | C     | -         | Functional[^bootcmds] |
| GameModes                 | Asm   |           |           |
| ScreenModes               | Asm   |           |           |
| ScreenBlanker             | Asm   |           | Investigate          |
| ScrSaver                  | C     | -         |           |
| SoundDMA                  | Asm   |           |           |
| SoundChannels             | Asm   |           |           |
| WaveSynth                 | Asm   |           |           |
| StringLib                 | Asm   |           |           |
| Percussion                | Asm   |           |           |
| SoundScheduler            | Asm   |           |           |
| SharedSound               | Asm   |           |           |
| SystemBell                | Asm   | Functional | Functional |
| DeviceFS                  | Asm   |           |           |
| ParallelDeviceDriver      | Asm   |           |           |
| ColourTrans               | Asm   |           |           |
| Draw                      | Asm   |           |           |
| SpriteExtend              | Asm/C |           |           |
| ColourMap                 | C     | -         |           |
| BlendTable                | C     | -         | Built     |
| InverseTable              | Asm   |           |           |
| DrawFile                  | C     | -         | Built[^drawfile] |
| FontMap                   | C     | -         |           |
| ZLib                      | C     | -         | Built     |
| PNG                       | C     | -         |           |
| ROMFonts                  | Asm   |           |           |
| FontManager               | Asm   |           |           |
| SuperSample               | Asm   |           |           |
| ImageFileConvert          | C     | -         |           |
| CompressJPEG              | C     | -         |           |
| ConvertPNG                | C     | -         |           |
| ConvertBMP                | C     | -         | Built     |
| ConvertDoom               | C     | -         | Built     |
| ConvertGIF                | C     | -         | Built     |
| ConvertICO                | C     | -         | Built     |
| ConvertPCX                | C     | -         | Built     |
| ConvertPNM                | C     | -         | Built     |
| ConvertSprite             | C     | -         |           |
| ConvertSun                | C     | -         | Built     |
| ConvertXBM                | C     | -         | Built     |
| ConvertClear              | Asm   |           |           |
| ImageFileRender           | C     | -         | Functional |
| ImageFileRender_Artworks  | C     | -         |           |
| Zipper                    | C     | -         |           |
| PrinterBuffer             | Asm   | Functional | Functional |
| PDriver                   | Asm   |           |           |
| PDriverDP                 | Asm   |           |           |
| PDumperSupport            | Asm   |           |           |
| PDumper24                 | Asm   |           |           |
| PDumperCX                 | Asm   |           |           |
| PDumperDM                 | Asm   |           |           |
| PDumperE2                 | Asm   |           |           |
| PDumperIW                 | Asm   |           |           |
| PDumperLJ                 | Asm   |           |           |
| PDriverPS                 | Asm   |           |           |
| MakePSFont                | Asm   |           |           |
| RemotePrinterSupport      | C     | -         | Built     |
| RemotePrinterMessages     | Asm   |           |           |
| WindowManager             | Asm/C |           |           |
| FilterManager             | Asm   |           |           |
| RedrawManager             | Asm   |           |           |
| Desktop                   | Asm   |           |           |
| IconBorderBeveled         | C     | -         | Built     |
| IconBorderFob             | C     | -         | Built     |
| IconBorderCrossy          | C     | -         | Built     |
| IconBorderLoop            | C     | -         | Built     |
| IconBorderPlainPopping    | C     | -         | Built     |
| IconBorderPlain           | C     | -         | Built     |
| IconBorderRound           | C     | -         |           |
| TaskManager               | Asm   |           |           |
| ShellCLI                  | Asm   |           |           |
| DisplayManager            | Asm   |           |           |
| DragASprite               | Asm   |           |           |
| DragAnObject              | Asm   |           |           |
| Filer                     | Asm/C |           |           |
| FilerSWIs                 | Asm   |           |           |
| Filer_Action              | C     | -         |           |
| Free                      | Asm   |           |           |
| Pinboard                  | Asm   |           |           |
| ClipboardHolder           | C     | -         |           |
| WindowScroll              | C     | -         |           |
| ColourPicker              | C     | -         |           |
| TaskWindow                | Asm   |           |           |
| NetI                      | Asm   |           |           |
| NetFS                     | Asm   |           |           |
| NetStatus                 | Asm   |           |           |
| NetFiler                  | Asm   |           |           |
| NetPrint                  | Asm   |           |           |
| MbufManager               | Asm   |           |           |
| Internet                  | C     | -         |           |
| InetServices              | C     | -         |           |
| Resolver                  | C     | -         |           |
| MimeMap                   | C     | -         |           |
| InternetTime              | C     | -         |           |
| InetConfigure             | C     | -         |           |
| DHCPClient                | C     | -         |           |
| ZeroConf                  | C     | -         |           |
| RouterDiscovery           | C     | -         |           |
| Freeway                   | C     | -         |           |
| FreewayHosts              | C     | -         |           |
| ShareFS                   | C     | -         |           |
| LanManFS                  | C     | -         |           |
| Toolbox                   | C     | -         |           |
| Window                    | C     | -         |           |
| Menu                      | C     | -         |           |
| Iconbar                   | C     | -         |           |
| ColourDbox                | C     | -         |           |
| ColourMenu                | C     | -         |           |
| DCS                       | C     | -         |           |
| FileInfo                  | C     | -         |           |
| FontDbox                  | C     | -         |           |
| FontMenu                  | C     | -         |           |
| PrintDbox                 | C     | -         |           |
| ProgInfo                  | C     | -         |           |
| SaveAs                    | C     | -         |           |
| Scale                     | C     | -         |           |
| GDivider                  | C     | -         |           |
| ToolAction                | C     | -         |           |
| TextGadgets               | C     | -         |           |
| ImageFileGadget           | C     | -         |           |
| CDFSResources             | Asm   |           |           |
| CDFSdriver                | Asm   |           |           |
| CDFSSoftATAPI             | Asm   |           |           |
| CDFSSoftChinonEESOX       | Asm   |           |           |
| CDFSSoftHitachiEESOX      | Asm   |           |           |
| CDFSSoftPhilipsEESOX      | Asm   |           |           |
| CDFSSoftSonyEESOX         | Asm   |           |           |
| CDFSSoftToshibaEESOX      | Asm   |           |           |
| LegacyBBC                 | Asm   |           |           |
| LegacyScreen              | Asm   |           |           |
| BBCEconet                 | Asm   |           |           |
| SpriteUtils               | Asm   | Stub[^spriteutils] | Stub[^spriteutils] |
| OwnerBanner               | Asm   | Functional[^ownerbanner] | Functional[^ownerbanner] |
| IRQUtils                  | Asm   |           |           |
| WindowUtils               | Asm   |           |           |
| CallASWI                  | Asm   |           |           |
| BootNet                   | Asm   |           |           |
| AUNMsgs                   | Asm   |           |           |
| !Alarm                    | BASIC |           |           |
| LibraryHelp               | C     | -         | Functional     |
| ErrorLog                  | C     | -         | Built     |

### New ROM modules

| Name                      | C-state   | 64-state  |
|---------------------------|-----------|-----------|
| SystemVarsDefaults        | Functional     | Functional     |


### System modules

| Name                      | Lang  | C-state   | 64-state  |
|---------------------------|-------|-----------|-----------|
| RateTracker               | C     | -         | Built     |

(to be updated)


### Additional modules

| Name                      | Lang  | C-state   | 64-state  |
|---------------------------|-------|-----------|-----------|
| IconBorderBeveled         | C     | -         | Built     |
| IconBorderCrossy          | C     | -         | Built     |
| IconBorderFob             | C     | -         | Built     |
| IconBorderPlain           | C     | -         | Built     |
| IconBorderPlainPopping    | C     | -         | Built     |
| IconBorderSkins           | C     | -         | Built     |


[^1]: Vector claims are not supported yet in RISC OS Pyromaniac or CMunge.

[^cmungehelp]: CMunge does not support help code yet.
[^cmungegeneric]: CMunge does not support generic veneers yet.
[^debugger]: Debugger Functional in 32bit and 64bit, and decodes ARM, Thumb and AArch64.
[^arm]: Stub created which has a dummy *Command and that's it.
[^buffermanager]: Buffer vectors InsV, RemV, CnPV have very poor interfaces, which should not be propagated into RISC OS 64.
[^ownerbanner]: Only the text part of the banner is currently implemented.
[^spriteutils]: Does not support the vector handling yet.
[^hourglass]: Although the base is in C, the generated sections are in assembler.
[^srevill]: Being worked on by Steve Revill.
[^jstamp]: Completed by Julie Stamp.
[^crash]: Current crashes when run.
[^messagetrans]: Missing dictionary calls.
[^bootcmds]: BootCommands works, but its implementation isn't sane for the `AppSize` command at all - it manipulates the RMA, not the application slot size.
[^drawfile]: Built but doesn't work as the structures are not the right sizes in memory. Also doesn't have any colour mapping or IFC support.

### ROM resources

| Name          | Filetype  | Lang      | C-state   | 64-state  |
|---------------|-----------|-----------|-----------|-----------|
| BootMenu      | Absolute  | C         | -         | Functional[^network][^link] |
| Repeat        | Absolute  | C         | -         |           |

[^network]: Network libraries are not currently implemented, so no networking is available.
[^link]: Linking isn't available so dynamic loaded entries are not possible.


### Library files

| Name          | Filetype  | Lang      | C-state   | 64-state  |
|---------------|-----------|-----------|-----------|-----------|
| ForHooks      | Absolute  | C         | -         | Built     |
| ImgConvert    | Absolute  | C         | -         | Built     |
| MiniJTran     | Absolute  | C         | -         | Built     |
| AddApp        | Utility   | Asm       |           |           |
| AppSize       | Utility   | Asm       |           |           |
| CDReinit      | Utility   | Asm       |           |           |
| ClrMonitor    | Absolute  | C         | -         | Built     |
| Do            | Utility   | Asm       |           |           |
| FontChange    | BASIC     | Script    |           |           |
| ForHooks      | Absolute  | C         | -         | Built     |
| HOff          | BASIC     | Script    |           |           |
| HOn           | BASIC     | Script    | -         | Built     |
| IfThere       | Utility   | Asm       |           |           |
| LoadCMOS      | Absolute  | C         | -         | [^libsupport] |
| MD5Hash       | Absolute  | C         | -         | Built     |
| MiniGZip      | Absolute  | C         | -         | [^libzlib] |
| MiniGrep      | Absolute  | C         | -         | Built     |
| MiniUnzip     | Absolute  | C         | -         | Built     |
| MiniZip       | Absolute  | C         | -         | Built     |
| Repeat        | Absolute  | C         | -         | [^csystem] |
| SafeLogon     | Absolute  | C         | -         | Built     |
| ScanLibs      | BASIC     | Script    | -         | Built     |
| SysPaths      | Absolute  | C         | -         | [^libsupport] |
| X             | Utility   | Asm       |           |           |

[^libsupport]: The support library doesn't currently build for 64-bit.
[^csystem]: The system() call is not currently implemented for 64-bit.

### Boot utilities

| Name          | Filetype  | Lang      | C-state   | 64-state  |
|---------------|-----------|-----------|-----------|-----------|
| AddToRMA      | Utility   | Asm       |           |           |
| BandLimit     | Absolute  | C         | -         | Built     |
| BootLog       | Module    | C         | -         | Built     |
| BootRun       | Obey      | Script    |           |           |
| BootVars      | Absolute  | C         | -         | [^libsupport] |
| CheckMouse    | Absolute  | C         | -         | Built     |
| DeskCheck     | BASIC     | Script    |           |           |
| DeskRun       | Obey      | Script    |           |           |
| Desktop       | Desktop   | Script    |           |           |
| ErrorLog      | Module    | C         | -         | Built     |
| FileCoreCheck | Absolute  | C         | -         | [^csystem] |
| FreePool      | Utility   | Asm       |           |           |
| HWScan        | Absolute  | C         | -         | Built     |
| LibraryHlp    | Module    | C         | -         | Functional     |
| MemFix        | Module    | Asm       |           |           |
| PatchApp      | Module    | C         | -         |           |
| SetChoices    | Obey      | Script    |           |           |
| ShrinkRMA     | Utility   | Asm       |           |           |
| Softload      | Absolute  | C         | -         |           |
| UnplugTbox    | BASIC     | Script    | -         |           |
| VProtect      | Module    | Binary    |           |           |


## Libraries

Libraries have a slightly different lifecycle, as they don't produce a tool or module themselves which is usable, but are used by others. As such, the `Built` state indicates that the library has been exported and is available for use - but that it hasn't been validated that it works properly.

| Name          | Lang      | C-state   | 64-state  |
|---------------|-----------|-----------|-----------|
| C library     | C/Asm     | -         | Functional[^clib] |
| OSLib         | DSL/Asm   |           | Complete[^oslib] |
| Base64        | C         | -         | Built   |
| ANTMemLib     | C         | -         | |
| AOFLink       | C         | -         | [^aoflink] |
| Asm           | Asm       |           | |
| AsmDebug      | Asm       |           | |
| Base64        | C         | -         | Built |
| CLX           | C         | -         | Built |
| Configure     | C         | -         | [^libtoolbox] |
| DES           | C         | -         | Built |
| Desk          | C         | -         | |
| DeskLib       | C         | -         | |
| FindResolver  | C         | -         | [^network] |
| Fortify       | C         | -         | Built |
| GResolve      | C         | -         | [^network] |
| GetOpt        | C         | -         | Built |
| IFCLib        | C         | -         | Built |
| INIRead       | C         | -         | Built |
| Interact      | C         | -         | Built |
| Interfaces    | C         | -         | [^network] |
| JBacktrace    | C         | -         | [^architecture] |
| JavaScript    | C         | -         | |
| LongLong      | C         | -         | |
| MD5           | C         | -         | Built |
| MemCheck      | C         | -         | [^architecture] |
| MiniDump      | C         | -         | |
| ModMalloc     | C         | -         | |
| ModuleTask    | Asm       |           | |
| ModuleWrap    | Asm       |           | |
| PBTS          | C         | -         | |
| PlainArgv     | C         | -         | |
| PNG           | C         | -         | |
| RISC_OSLibSA  | C         | -         | Built |
| ROLib         | C         | -         | Built |
| RegExp        | C         | -         | Built |
| Resolver      | C         | -         | [^network] |
| SCLStubsG     | C         | -         | [^architecture] |
| SHA1          | C         | -         | Built |
| SQLite        | C         | -         | |
| Support       | C         | -         | Built[^support] |
| TCPIPLibs     | C         | -         | |
| TGRlib        | C         | -         | |
| TIFF          | C         | -         | |
| TaskWindow    | C         | -         | [^libtoolbox] |
| Throwback     | C         | -         | Built |
| URLFetch      | C         | -         | Built |
| WebImage:WebImage | C     | -         | Built |
| WebImage:XBM      | C     | -         | Built |
| WebImage:GIF      | C     | -         | Built |
| WimpKeyName   | C         | -         | Built |
| Zipper        | C         | -         | Built |
| ZLib          | C         | -         |  |
| mDNSCore      | C         | -         | Built |

[^clib]: C library has been reimplemented, using open source and custom components.
[^oslib]: OSLib for RISC OS 64 is now complete.

[^aoflink]: AOFLink isn't relevant for 64-bit.
[^libtoolbox]: Requires Toolbox libraries.
[^libzlib]: Requires ZLib library.
[^support]: Support library is mostly built with a few internal libs missing.
[^architecture]: Isn't relevant for AArch64?


## Tools

The tools for developing 64-bit components need to be created.
The table below shows information about various tools and their support:

* *Tool*: Describes the intent of the tool.
* *Name*: The particular variant of the tool described.
* *Lang*: The implementation language (if relevant).
* *C-state*: The status of the RISC OS implementation for 32bit.
* *64-state*: The status of the RISC OS implementation for 64bit.
* *Linux*: The status of a Linux version of the tool.
* *Mac*: The status of the Mac version of the tool.
* *Windows*: The status of the Windows version of the tool.

### Primary toolchain

| Tool          | Name                   | Lang      | C-state   | 64-state       | Linux                    | Mac                  | Windows        |
|---------------|------------------------|-----------|-----------|----------------|--------------------------|----------------------|----------------|
| C Compiler    | cc (Norcroft)          | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| C Compiler    | gcc (GCC)              | C         |           | N/A[^gcc]      | Functional[^riscos64-cc] | Via Docker           | Via WSL?       |
| C Compiler    | tcc (as compiler)      | C         |           | Functional[^tcc] | No                     | Functional[^tcc]     |                |
| C++ Compiler  | c++ (Norcroft)         | C         | -         | N/A[^norcroft][^cfront] | N/A             | N/A                  | N/A            |
| Assembler     | objasm (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Assembler     | gas (GCC)              | C         |           | N/A[^gas]      | Functional[^riscos64-objasm]  | Via Docker      | Via WSL?       |
| Linker        | link (Norcroft)        | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Linker        | ld (BinUtils)          | C         |           | N/A[^ld]       | Functional[^riscos64-link]    | Via Docker      | Via WSL?       |
| Linker        | tcc (as linker)        | C         |           | Built[^tcc]    | No                       | Built[^tcc]          |                |
| Lib maker     | libfile (Norcroft)     | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Lib maker     | makealf                | C         | -         | N/A[^makealf]  | N/A                      | N/A                  | N/A            |
| Lib maker     | ar (BinUtils)          | C         |           | N/A[^ar]       | Functional[^riscos64-libfile] | Via Docker      | Via WSL?       |
| Module header | cmhg (Norcroft)        | C         | -         | N/A[^norcroft][^cmhg] | N/A               | N/A                  | N/A            |
| Module header | cmunge                 | C         | -         | Functional[^cmunge] | Functional          | Functional           | N/A            |
| Make tool     | amu (Norcroft)         | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Make tool     | make (GNU)             | C         |           | N/A[^make]     | Functional[^make]        | Functional[^make]    | Via WSL?       |
| AOF-to-C      | aoftoc (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Bin-to-AOF    | binaof (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Decode AOF    | decaof (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Code compress | squeeze (Norcroft)     | C         | -         | N/A[^norcroft][^squeeze] | N/A            | N/A                  | N/A            |
| Code compress | modsqz (Norcroft)      | C         | -         | N/A[^norcroft][^modsqz] | N/A             | N/A                  | N/A            |



### Additional tools

| Tool         | Name                   | Lang      | C-state   | 64-state       | Linux                    | Mac                  | Windows        |
|--------------|------------------------|-----------|-----------|----------------|--------------------------|----------------------|----------------|
| Perl         | perl (5.001)           | C         | -         | Functional[^perl] |                       |                      |                |
| Detokeniser  | basicdetokenise        | C         | -         |                |                          |                      |                |
| Tokeniser    | basictokenise          | Perl      |           |                | Functional               | Functional                |                |
| Parser gen   | bison                  | C         | -         | Built[^bison]  |                          |                      |                |
| OSLib gen    | defmod                 | C         | -         |                | N/A[^defmod]             |                      |                |
| OSLib gen    | oslib parser           | Python    |           |                | Functional[^defmod]      | Works[^defmod]       |                |
| Lex analyser | flex                   | C         | -         | Built[^flex]   |                          |                      |                |
| Header maker | hdrtoh                 | Perl      |           |                |                          |                      |                |
| Cat file     | kitten                 | C         | -         | Functional[^kitten] |                     |                      |                |
| Mod decoder  | modservices            | C         | -         | Functional[^modservices] |                |                      |                |
| Stream edit  | sed                    | C         | -         | Built[^sed]    |                          |                      |                |
| Version Trans | vtranslate            | C         | -         | Functional[^vtranslate]|                  |                      |                |
| Binary includes | binaof              | C         | -         | N/A[^norcroft][^binaof] | N/A             | N/A                  | N/A            |
| Resource mods | modgen                | C         | -         | Functional[^modgen] | N/A                 | N/A                  | N/A            |
| Resource includes | resgen            | C         | -         | N/A[^norcroft][^resgen] | N/A             | N/A                  | N/A            |

[^norcroft]: The Norcroft toolchain only builds 32-bit binaries, so it is not useful to port this to RISC OS 64. As other compilers exist for AArch64 code, it is more sensible to use them instead of updating the aging Norcroft toolchain.
[^cfront]: CFront hasn't even been attempted, as it is ancient and doesn't really support modern C++. It also doesn't built itself with C++ compilers.
[^cmhg]: CMHG constructs the module header from binary code fragments, which would need to have significant changes to make it work with AArch64. CMunge is a better solution as it creates assembler files which can be examined and modified easily.
[^modsqz]: Code compression is redundant these days as disc is cheap and fast.
[^squeeze]: Code compression is redundant these days as disc is cheap and fast.
[^cmunge]: CMunge has been updated to generate AArch64 module headers. Not all the interfaces are complete; in particular vector handlers cannot claim the vector as yet.
[^gcc]: GCC has not been ported to RISC OS 64.
[^tcc]: TCC has been ported to RISC OS 64 and demonstrated to create objects that are linkable. It can be compiled for macOS and will create code suitable for use on RISC OS 64.
[^gas]: GAS has not been ported to RISC OS 64. GAS has an ugly syntax, but can be used to build AArch64 binaries on other platforms.
[^ld]: ld has not been ported to RISC OS 64.
[^makealf]: MakeALF only operates on ALF files so has not been ported to RISC OS 64.
[^ar]: ar has not been ported to RISC OS 64.
[^make]: GNU make has not been ported to RISC OS 64. It can be used to orchestrate the building of AArch64 binaries for use with RISC OS 64 on other platforms, as a native tool.
[^riscos64-cc]: The `riscos64-cc` tool has been created as a wrapper around `gcc` which sets up the necessary environment for building RISC OS 64 binaries.
[^riscos64-objasm]: The `riscos64-objasm` tool has been created as a wrapper around `objasm2gas` and `as` which translates sources in `objasm` format to those that can be used by `as`, as ObjAsm is a much more familiar format for RISC OS users.
[^riscos64-link]: The `riscos64-link` tool has been created as a wrapper around `ld` (with other tooling for function signatures and relocation code) to build RISC OS 64 binaries (AIF, RMF, Utility).
[^riscos64-libfile]: The `riscos64-libfile` tool has been created as a wrapper around `ar`, which has `libfile` syntax to create libraries for RISC OS 64 (as a syntactic sugar).
[^perl]: Perl in RISC OS 64 is functional, but cannot invoke commands due to the lack of `system` in the C library.
[^bison]: Bison has been built but not tested in its built form.
[^flex]: Flex has been built but not tested in its built form.
[^defmod]: Defmod relies on AArch32 output, so is not useful for AArch64.
[^oslib-parser]: The Python OSLib Parser can generate AArch64 code from OSLib def files.
[^kitten]: A small version of cat.
[^modservices]: Lists services used by modules. For AArch64 this is only dispatched through a table, so is trivial to decode.
[^sed]: SEd has been built but not tested in its built form.
[^vtranslate]: Version number translator has been built and works.
[^binaof]: BinAOF creates AOF files directly, so isn't useful for non-32bit systems. Similar tools like `bin2c` might be a suitable alternative in the future.
[^modgen]: ModGen creates a module which just contains resources (like the Messages module).
[^resgen]: ResGen builds resource contents that we can register, but as an AOF file. It would be handy to replace this with a tool that created ELF as well.

The Docker build environment provides the build tooling for 32bit and 64bit systems.
The environment is functional as a tooling environment for building applications, utilities and modules.
It currently uses GCC 12 (crosstool-NG-1.26.0).


### Norcroft tools

This section lists the build system components from the regular Norcroft toolchain used on RISC OS, and how they have been addressed with the 64-bit world.

* `amu` - make tool

  Makefile tools can use the standard GNU `make`. Or RISC OS AMU if necessary.

* `cc` - C compiler

  Norcroft is not necessary; GNU `gcc` will work fine. CLI transform can be used
  to manipulate the command line to handle RISC OS style filenames.

* `objasm` - Assembler

  Norcroft is not necessary; GNU `as` will work fine. However, `as` has ugly
  syntax, so a wrapper can be provided which transforms `objasm` syntax into `as`
  assembler.

* `link` - Linker

  Norcroft is not necessary; GNU `ld` will work fine, with a suitable linker
  script. Function signatures can be added with post-processing. Run time
  relocation can be added as necessary.

* `cmhg` - Module header generator

  Norcroft is not necessary; CMunge can be used, with suitable modifications.

  Outstanding issues: Not all interfaces implemented yet.

* `squeeze`/`modsqz` - binary compressor

  Not required, as disk space is cheap, and transmission time is low.



## Services

* RISC OS Pyromaniac demo shell - example RISC OS environment.

  Available in 32bit and 64bit variants, with example applications present.

* RISC OS Build service - API for building RISC OS applications.

  Can run RISC OS Pyromaniac in 32-bit and 64-bit environments, allowing testing
  of built RISC OS 64-bit utilities, absolutes and modules.
