# RISC OS 64 porting status

This repository contains information about the status of RISC OS 64 ports of
modules.

## RISC OS components

### Built components

Some of the absolutes and modules which have been ported can be found within this repository.

* The `rm32` directory contains the 32-bit version of modules.
* The `rm64` directory contains the 64-bit version of modules.
* The `aif32` directory contains the 32-bit version of absolutes.
* The `aif64` directory contains the 64-bit version of absolutes.

Absolutes and modules which are in the process of being created as C code may exist in both directories but may have incomplete implementations.

The files within this repository have rudimentary tess applied to them;
we test absolute by trying to execute it (if we can) and each module by
trying to load it. This is limited, but it proves that the components at
least start.


### Current status

The following tables show the status of each module.

* `Lang` indicates the RISC OS Classic implementation
* `Filetype` indicates the filetype (for disc based components)
* `C-State` indicates whether there is a port to C (for Asm components)
* `64-state` indicates whether the port works in 64-bit.

### ROM modules

| Name                      | Lang  | C-state   | 64-state  |
|---------------------------|-------|-----------|-----------|
| UtilityModule             | Asm   |           |           |
| IRQ                       | Asm   |           |           |
| TimerManager              | Asm   |           |           |
| Podule                    | Asm   |           |           |
| IIC                       | Asm   |           |           |
| NVRAMHW                   | Asm   |           |           |
| Conversions               | Asm   |           |           |
| OSSWIs                    | Asm   |           |           |
| EvaluateExpression        | Asm   |           |           |
| SystemVars                | Asm   |           |           |
| FileTypes                 | Asm   | Works     | Works     |
| FPEmulator                | Asm   |           |           |
| SharedCLibrary            | C     | -         |           |
| UnSqueezeAIF              | Asm   |           |           |
| AppPatcher                | Asm   |           |           |
| DiagnosticDump            | C     | -         |           |
| CFrontDemangler           | C     | -         |           |
| ReadLine                  | Asm   | Works     | Partial[^1] |
| CLIV                      | Asm   |           |           |
| VideoTTX                  | C     | -         |           |
| VideoSW                   | Asm   |           |           |
| VideoHWVIDC               | Asm   |           |           |
| VideoHWVF                 | Asm   |           |           |
| VideoGuard                | Asm   |           |           |
| OSCommands                | Asm   | In progress | In progress |
| FSCommands                | Asm   |           |           |
| ModuleCommands            | Asm   | Works[^cmungehelp] | Works[^cmungehelp] |
| ARM                       | Asm   |           |           |
| BufferManager             | Asm   | In progress | Built[^buffermanager] |
| Debugger                  | Asm   | Works[^debugger] | Works[^debugger] |
| RTC                       | Asm   | Works     | Partial[^1]   |
| DMAManager                | Asm   |           |           |
| RTCAdjust                 | Asm   |           |           |
| RTCHW                     | Asm   |           |           |
| OSPointer                 | Asm   |           |           |
| Hourglass                 | Asm   | Partial[^hourglass] |           |
| Portable                  | Asm   | Prototype works | Prototype works |
| FileSwitch                | Asm   |           |           |
| Squash                    | Asm/C |           |           |
| ResourceFS                | Asm   |           |           |
| ResourceFiler             | Asm   |           |           |
| Messages                  | Asm   |           |           |
| MessageTrans              | Asm   | Works[^messagetrans] | Works[^messagetrans] |
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
| BASIC                     | Asm   | In progress [^srevill] |           |
| BASIC64                   | Asm   |           |           |
| BASICTrans                | Asm   |           |           |
| Obey                      | Asm   | Complete[^jstamp]      |           |
| DDEUtils                  | Asm   |           |           |
| PathUtils                 | C     | -         | Works     |
| SysLog                    | C     | -         |           |
| BootCommands              | C     | -         |           |
| GameModes                 | Asm   |           |           |
| ScreenModes               | Asm   |           |           |
| ScreenBlanker             | Asm   |           |           |
| ScrSaver                  | C     | -         |           |
| SoundDMA                  | Asm   |           |           |
| SoundChannels             | Asm   |           |           |
| WaveSynth                 | Asm   |           |           |
| StringLib                 | Asm   |           |           |
| Percussion                | Asm   |           |           |
| SoundScheduler            | Asm   |           |           |
| SharedSound               | Asm   |           |           |
| SystemBell                | Asm   | Works     | Works     |
| DeviceFS                  | Asm   |           |           |
| ParallelDeviceDriver      | Asm   |           |           |
| ColourTrans               | Asm   |           |           |
| Draw                      | Asm   |           |           |
| SpriteExtend              | Asm/C |           |           |
| ColourMap                 | C     | -         |           |
| BlendTable                | C     | -         | Built     |
| InverseTable              | Asm   |           |           |
| DrawFile                  | C     | -         |           |
| FontMap                   | C     | -         |           |
| ZLib                      | C     | -         | Built     |
| PNG                       | C     | -         |           |
| ROMFonts                  | Asm   |           |           |
| FontManager               | Asm   |           |           |
| SuperSample               | Asm   |           |           |
| ImageFileConvert          | C     | -         |           |
| CompressJPEG              | C     | -         |           |
| ConvertPNG                | C     | -         |           |
| ConvertBMP                | C     | -         |           |
| ConvertGIF                | C     | -         |           |
| ConvertICO                | C     | -         |           |
| ConvertPNM                | C     | -         |           |
| ConvertSprite             | C     | -         |           |
| ConvertSun                | C     | -         |           |
| ConvertXBM                | C     | -         |           |
| ConvertPCX                | C     | -         |           |
| ConvertClear              | C     | -         |           |
| ImageFileRender           | C     | -         | Works     |
| ImageFileRender_Artworks  | C     | -         |           |
| Zipper                    | C     | -         |           |
| PrinterBuffer             | Asm   | Works     | Works     |
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
| RemotePrinterSupport      | C     | -         |           |
| RemotePrinterMessages     | Asm   |           |           |
| WindowManager             | Asm/C |           |           |
| FilterManager             | Asm   |           |           |
| RedrawManager             | Asm   |           |           |
| Desktop                   | Asm   |           |           |
| IconBorderPlain           | C     | -         |           |
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
| SpriteUtils               | Asm   | Built[^spriteutils] | Built[^spriteutils] |
| OwnerBanner               | Asm   | Started[^ownerbanner] | Started[^ownerbanner] |
| IRQUtils                  | Asm   |           |           |
| WindowUtils               | Asm   |           |           |
| CallASWI                  | Asm   |           |           |
| BootNet                   | Asm   |           |           |
| AUNMsgs                   | Asm   |           |           |
| !Alarm                    | BASIC |           |           |
| LibraryHelp               | C     | -         | Works     |
| ErrorLog                  | C     | -         | Built     |


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
[^debugger]: Debugger works in 32bit and 64bit, but doesn't decode AArch64.
[^buffermanager]: Buffer vectors InsV, RemV, CnPV have very poor interfaces, which should not be propagated into RISC OS 64.
[^ownerbanner]: Only the text part of the banner is currently implemented.
[^spriteutils]: Does not support the vector handling yet.
[^hourglass]: Although the base is in C, the generated sections are in assembler.
[^srevill]: Being worked on by Steve Revill.
[^jstamp]: Completed by Julie Stamp.
[^crash]: Current crashes when run.
[^messagetrans]: Missing dictionary calls.

### ROM resources

| Name          | Filetype  | Lang      | C-state   | 64-state  |
|---------------|-----------|-----------|-----------|-----------|
| BootMenu      | Absolute  | C         | -         | Partial[^network][^link] |
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
| HWScan        | Absolute  | C         | -         |           |
| LibraryHlp    | Module    | C         | -         | Works     |
| MemFix        | Module    | Asm       |           |           |
| PatchApp      | Module    | C         | -         |           |
| SetChoices    | Obey      | Script    |           |           |
| ShrinkRMA     | Utility   | Asm       |           |           |
| Softload      | Absolute  | C         | -         |           |
| UnplugTbox    | BASIC     | Script    | -         |           |
| VProtect      | Module    | Binary    |           |           |


## Libraries

| Name          | Lang      | C-state   | 64-state  |
|---------------|-----------|-----------|-----------|
| C library     | C/Asm     | -         | Partial[^clib] |
| OSLib         | DSL/Asm   | -         | Partial[^oslib] |
| Base64        | C         | -         | Exports   |
| ANTMemLib     | C         | -         | |
| AOFLink       | C         | -         | [^aoflink] |
| Asm           | Asm       |           | |
| AsmDebug      | Asm       |           | |
| Base64        | C         | -         | Exports |
| CLX           | C         | -         | Exports |
| Configure     | C         | -         | [^libtoolbox] |
| DES           | C         | -         | Exports |
| Desk          | C         | -         | |
| DeskLib       | C         | -         | |
| FindResolver  | C         | -         | [^network] |
| Fortify       | C         | -         | Exports |
| GResolve      | C         | -         | [^network] |
| GetOpt        | C         | -         | Exports |
| IFCLib        | C         | -         | Exports |
| INIRead       | C         | -         | Exports |
| Interact      | C         | -         | Exports |
| Interfaces    | C         | -         | [^network] |
| JBacktrace    | C         | -         | [^architecture] |
| JavaScript    | C         | -         | |
| LongLong      | C         | -         | |
| MD5           | C         | -         | Exports |
| MemCheck      | C         | -         | [^architecture] |
| MiniDump      | C         | -         | |
| ModMalloc     | C         | -         | |
| ModuleTask    | Asm       | -         | |
| ModuleWrap    | Asm       | -         | |
| PBTS          | C         | -         | |
| PlainArgv     | C         | -         | |
| RISC_OSLib    | C         | -         | |
| RISC_OSLibSA  | C         | -         | |
| ROLib         | C         | -         | Exports |
| RegExp        | C         | -         | Exports |
| Resolver      | C         | -         | [^network] |
| SCLStubsG     | C         | -         | [^architecture] |
| SHA1          | C         | -         | Exports |
| SQLite        | C         | -         | |
| Support       | C         | -         | |
| TCPIPLibs     | C         | -         | |
| TGRlib        | C         | -         | |
| TIFF          | C         | -         | |
| TaskWindow    | C         | -         | [^libtoolbox] |
| Throwback     | C         | -         | Exports |
| URLFetch      | C         | -         | Exports |
| WebImage      | C         | -         | |
| WimpKeyName   | C         | -         | Exports |
| Zipper        | C         | -         | Exports |
| mDNSCore      | C         | -         | Exports |

[^clib]: C library has been reimplemented, using open source and custom components.
[^oslib]: Most OSLib SWI interfaces have been implemented and exported, although some are not functional.

[^aoflink]: AOFLink isn't relevant for 64-bit.
[^libtoolbox]: Requires Toolbox libraries.
[^libzlib]: Requires ZLib library.
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
| C Compiler    | gcc (GCC)              | C         |           | N/A[^gcc]      | Works[^riscos64-cc]      | Via Docker           | Via WSL?       |
| C Compiler    | tcc                    | C         |           | N/A[^tcc]      | No                       | Works[^tcc]          |                |
| C++ Compiler  | c++ (Norcroft)         | C         | -         | N/A[^norcroft][^cfront] | N/A             | N/A                  | N/A            |
| Assembler     | objasm (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Assembler     | gas (GCC)              | C         |           | N/A[^gas]      | Works[^riscos64-objasm]  | Via Docker           | Via WSL?       |
| Linker        | link (Norcroft)        | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Linker        | ld (BinUtils)          | C         |           | N/A[^ld]       | Works[^riscos64-link]    | Via Docker           | Via WSL?       |
| Lib maker     | libfile (Norcroft)     | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Lib maker     | makealf                | C         | -         | N/A[^makealf]  | N/A                      | N/A                  | N/A            |
| Lib maker     | ar (BinUtils)          | C         |           | N/A[^ar]       | Works[^riscos64-libfile] | Via Docker           | Via WSL?       |
| Module header | cmhg (Norcroft)        | C         | -         | N/A[^norcroft][^cmhg] | N/A               | N/A                  | N/A            |
| Module header | cmunge                 | C         | -         | Functional[^cmunge] | Works               | Works                | N/A            |
| Make tool     | amu (Norcroft)         | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Make tool     | make (GNU)             | C         |           | N/A[^make]     | Works[^make]             | Works[^make]         | Via WSL?       |
| AOF-to-C      | aoftoc (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Bin-to-AOF    | binaof (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Decode AOF    | decaof (Norcroft)      | C         | -         | N/A[^norcroft] | N/A                      | N/A                  | N/A            |
| Code compress | squeeze (Norcroft)     | C         | -         | N/A[^norcroft][^squeeze] | N/A            | N/A                  | N/A            |
| Code compress | modsqz (Norcroft)      | C         | -         | N/A[^norcroft][^modsqz] | N/A             | N/A                  | N/A            |



### Additional tools

| Tool         | Name                   | Lang      | C-state   | 64-state       | Linux                    | Mac                  | Windows        |
|--------------|------------------------|-----------|-----------|----------------|--------------------------|----------------------|----------------|
| Perl         | perl (5.001)           | C         | -         | Works[^perl]   |                          |                      |                |
| Detokeniser  | basicdetokenise        | C         | -         |                |                          |                      |                |
| Tokeniser    | basictokenise          | Perl      |           |                | Works                    | Works                |                |
| Parser gen   | bison                  | C         | -         | Built[^bison]  |                          |                      |                |
| OSLib gen    | defmod                 | C         | -         |                | N/A[^defmod]             |                      |                |
| OSLib gen    | oslib parser           | Python    |           |                | Works[^defmod]           | Works[^defmod]       |                |
| Lex analyser | flex                   | C         | -         | Built[^flex]   |                          |                      |                |
| Header maker | hdrtoh                 | Perl      |           |                |                          |                      |                |
| Cat file     | kitten                 | C         | -         | Works[^kitten] |                          |                      |                |
| Mod decoder  | modservices            | C         | -         | Works[^modservices] |                     |                      |                |
| Stream edit  | sed                    | C         | -         | Built[^sed]    |                          |                      |                |
| Version Trans | vtranslate            | C         | -         | Works[^vtranslate]|                       |                      |                |

[^norcroft]: The Norcroft toolchain only builds 32-bit binaries, so it is not useful to port this to RISC OS 64. As other compilers exist for AArch64 code, it is more sensible to use them instead of updating the aging Norcroft toolchain.
[^cfront]: CFront hasn't even been attempted, as it is ancient and doesn't really support modern C++. It also doesn't built itself with C++ compilers.
[^cmhg]: CMHG constructs the module header from binary code fragments, which would need to have significant changes to make it work with AArch64. CMunge is a better solution as it creates assembler files which can be examined and modified easily.
[^modsqz]: Code compression is redundant these days as disc is cheap and fast.
[^squeeze]: Code compression is redundant these days as disc is cheap and fast.
[^cmunge]: CMunge has been updated to generate AArch64 module headers. Not all the interfaces are complete; in particular vector handlers cannot claim the vector as yet.
[^gcc]: GCC has not been ported to RISC OS 64.
[^tcc]: TCC has not been ported to RISC OS 64. It can be compiled for macOS and will create code suitable for use on RISC OS 64.
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
