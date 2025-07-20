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
| Debugger                  | Asm   | In progress[^debugger] |           |
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
| MessageTrans              | Asm   | Partial[^messagetrans] | Partial[^messagetrans] |
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
[^debugger]: Debugger works, but doesn't have Thumb decoding or breakpoints.
[^buffermanager]: Buffer vectors InsV, RemV, CnPV have very poor interfaces, which should not be propagated into RISC OS 64.
[^ownerbanner]: Only the text part of the banner is currently implemented.
[^spriteutils]: Does not support the vector handling yet.
[^hourglass]: Although the base is in C, the generated sections are in assembler.
[^srevill]: Being worked on by Steve Revill.
[^jstamp]: Completed by Julie Stamp.
[^crash]: Current crashes when run.
[^messagetrans]: Missing fallback for global messages and MakeMenus.

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
This section lists the build system components and how they have been addressed.

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

* Docker build environment - Builds for 32bit and 64bit systems.

  Functional as a tooling environment for building applications and modules,
  using GCC 12 (crosstool-NG-1.26.0).


## Services

* RISC OS Pyromaniac demo shell - example RISC OS environment.

  Available in 32bit and 64bit variants, with example applications present.

* RISC OS Build service - API for building RISC OS applications.

  Can run RISC OS Pyromaniac in 32-bit and 64-bit environments, allowing testing
  of built RISC OS 64-bit utilities, absolutes and modules.
